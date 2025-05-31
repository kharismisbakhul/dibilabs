import { AboutTeams } from "@/types/json/about_teams";
import { AboutPhoto } from "@/types/json/about_photo";

export async function getAboutTeamsData() : Promise<AboutTeams[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/about-teams?populate=*`;

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

export async function getAboutPhotoData() : Promise<AboutPhoto | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/about-photo?populate=*`;

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