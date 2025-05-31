import { ServiceSosmedAchievements } from "@/types/json/service_sosmed_achievements";
import { ServiceSosmedCores } from "@/types/json/service_sosmed_cores";
import { ServiceSosmedTrustedBies } from "@/types/json/service_sosmed_trustedBies";

export async function getServiceSosmedAchievementsData() : Promise<ServiceSosmedAchievements[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/sosmed-achievements?populate=*`;

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

export async function getServiceSosmedCoresData() : Promise<ServiceSosmedCores[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/sosmed-cores?populate=*`;

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

export async function getServiceSosmedTrustedBiesData() : Promise<ServiceSosmedTrustedBies[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/sosmed-trusted-bies?populate=*`;

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