import { ServiceMetaAchievements } from "@/types/json/service_meta_achievements";
import { ServiceMetaCores } from "@/types/json/service_meta_cores";
import { ServiceMetaTrustedBies } from "@/types/json/service_meta_trustedBies";

export async function getServiceMetaAchievementsData() : Promise<ServiceMetaAchievements[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/meta-achievements?populate=*`;

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

export async function getServiceMetaCoresData() : Promise<ServiceMetaCores[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/meta-cores?populate=*`;

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

export async function getServiceMetaTrustedBiesData() : Promise<ServiceMetaTrustedBies[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/meta-trusted-bies?populate=*`;

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