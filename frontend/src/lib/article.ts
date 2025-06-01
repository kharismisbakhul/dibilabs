import { Articles } from "@/types/json/articles";

export async function getArticleBySlug(slug: string): Promise<Articles | null> {
  try {
    const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
    const STRAPI_URL = `${baseUrl}/api/articles?populate=*&filters[slug][$eq]=${slug}`;
    const res = await fetch(STRAPI_URL, {
      next: { revalidate: 60 }, // Optional ISR
    });
    
    if (!res.ok) {
      throw new Error("Failed to fetch articles");
    }

    const { data } = await res.json();
    return data[0] || null;

  } catch (error) {
    console.error("Error in getArticleBySlug:", error);
    return null;
  } 
}
