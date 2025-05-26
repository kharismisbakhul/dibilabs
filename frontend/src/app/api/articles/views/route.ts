import { NextRequest, NextResponse } from 'next/server';

export async function POST(req: NextRequest) {
  console.log("POST /api/articles/views triggered");
    const body = await req.json();
    const slug = body.slug;

  if (!slug) {
    return NextResponse.json({ error: 'Missing slug' }, { status: 400 });
  }

  try {
    const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?filters[slug][$eq]=${slug}`);

    const json = await res.json();
    const article = json.data[0];

    if (!article) {
      return NextResponse.json({ error: 'Article not found' }, { status: 404 });
    }
    
    const str: string = article.view || "0";
    const num: number = Number(str);
    const views = num + 1;
    const countUpViews: string = String(views)

    // Update the view count
    await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles/${article.documentId}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        data: {
          view: countUpViews,
        },
      }),
    });

    return NextResponse.json({ counted: countUpViews, success: true });
  } catch (error) {
    console.error("Error updating view count:", error);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }

}