import { Articles } from "@/types/json/articles";

export async function getArticlesData() : Promise<Articles[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/articles?populate=*`;

  try {
    const res = await fetch(STRAPI_URL, {
      next: { revalidate: 60 }, // Optional ISR
    });

    if (!res.ok) {
      console.error(`Strapi responded with ${res.status}`);
      return null; // or throw new Error("Failed to fetch data");
    }

    const json = await res.json();
    return json.data;

  } catch (error) {
    console.error("Error fetching data:", error);
    return null; // or throw error if you want to handle it higher up
  }
}

export async function updateViewCount(slug: string): Promise<void> {
  try {
    const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles?filters[slug][$eq]=${slug}`);

    const json = await res.json();
    const article = json.data[0];

    const str: string = article.view;
    const num: number = Number(str);
    const newViews = num + 1;

    // Update the view count
    await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/articles/${article.documentId}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        data: {
          view: String(newViews),
        },
      }),
    });

  } catch (error) {
    console.error('Failed to update view count:', error);
  }
}