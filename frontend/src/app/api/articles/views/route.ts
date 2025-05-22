// src/app/api/submit/route.ts
import { NextRequest, NextResponse } from 'next/server';

export async function POST(req: NextRequest) {
    const { searchParams } = new URL(req.url);
  const slug = searchParams.get('slug');

  if (!slug) {
    return NextResponse.json({ error: 'Missing slug' }, { status: 400 });
  }

  try {
    // const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?filters[slug][$eq]=${slug}`, {
    //   headers: {
    //     Authorization: `Bearer ${process.env.STRAPI_API_TOKEN}`,
    //   },
    // });
    const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?filters[slug][$eq]=${slug}`);

    const json = await res.json();
    const article = json.data[0];

    if (!article) {
      return NextResponse.json({ error: 'Article not found' }, { status: 404 });
    }

    const currentViews = article.attributes.view || 0;

    // Update the view count
    await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles/${article.id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        data: {
          view: currentViews + 1,
        },
      }),
    });

    return NextResponse.json({ success: true });
  } catch (error) {
    console.error("Error updating view count:", error);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }

}