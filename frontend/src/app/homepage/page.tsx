import Homepage from "@/components/section/homepage";
import { getHomepageAchievementsData, getHomepagePartnersData, getHomepageServicesData, getHomepageArticlesData } from "@/lib/strapi_homepage";

export const metadata = {
  title: "Homepage",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [achievements, partners, services, articles] = await Promise.all([
    getHomepageAchievementsData(),
    getHomepagePartnersData(),
    getHomepageServicesData(),
    getHomepageArticlesData()
  ]);

  return (
    <>
      <Homepage achievements={achievements} partners={partners} services={services} articles={articles} />
    </>
  );
}
