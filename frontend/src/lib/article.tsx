import { Articles } from "@/types/json/articles";

export async function getArticleBySlug(slug: string): Promise<Articles | null> {
  try {
    const res = await fetch(`${process.env.NEXT_PUBLIC_BASE_URL || ""}/json/articles.json`);
    
    if (!res.ok) {
      throw new Error("Failed to fetch articles");
    }

    const json = await res.json();
    const found = json.data.find((a: Articles) => a.slug === slug);
    return found ?? null;

  } catch (error) {
    console.error("Error in getArticleBySlug:", error);
    return null;
  }
}
