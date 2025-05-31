import { Articles } from "@/types/json/articles";

export async function getArticleBySlug(slug: string): Promise<Articles | null> {
  try {
    const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
    const STRAPI_URL = `${baseUrl}/api/articles?populate=*`;
    const res = await fetch(STRAPI_URL);
    
    if (!res.ok) {
      throw new Error("Failed to fetch articles");
    }

    const json = await res.json();
    const found = json.data.find((a: Articles) => a.slug === slug);
    return found;

  } catch (error) {
    console.error("Error in getArticleBySlug:", error);
    return null;
  }
}
