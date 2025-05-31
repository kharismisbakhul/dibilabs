import { ServiceSeoAchievements } from "@/types/json/service_seo_achievements";
import { ServiceSeoCores } from "@/types/json/service_seo_cores";
import { ServiceSeoTrustedBies } from "@/types/json/service_seo_trustedBies";

export async function getServiceSeoAchievementsData() : Promise<ServiceSeoAchievements[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/seo-achievements?populate=*`;

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

export async function getServiceSeoCoresData() : Promise<ServiceSeoCores[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/seo-cores?populate=*`;

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

export async function getServiceSeoTrustedBiesData() : Promise<ServiceSeoTrustedBies[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/seo-trusted-bies?populate=*`;

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