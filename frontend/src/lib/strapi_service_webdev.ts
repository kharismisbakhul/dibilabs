import { ServiceWebdevCores } from "@/types/json/service_webdev_cores";
import { ServiceWebdevTrustedBies } from "@/types/json/service_webdev_trustedBies";

export async function getServiceWebdevCoresData() : Promise<ServiceWebdevCores[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/web-cores?populate=*`;

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

export async function getServiceWebdevTrustedBiesData() : Promise<ServiceWebdevTrustedBies[] | null> {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/web-trusted-bies?populate=*`;

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