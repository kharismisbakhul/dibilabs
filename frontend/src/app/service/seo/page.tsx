import Seo from "@/components/section/service/menu/seo";
import { getServiceSeoAchievementsData, getServiceSeoCoresData, getServiceSeoTrustedBiesData } from "@/lib/strapi_service_seo";
import { getServiceCoresData } from "@/lib/strapi_service";

export const metadata = {
  title: "Service - SEO",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [achievements, cores, trustedBy, serviceCores] = await Promise.all([
      getServiceSeoAchievementsData(),
      getServiceSeoCoresData(),
      getServiceSeoTrustedBiesData(),
      getServiceCoresData()
    ]);
    return (
      <>
        <Seo achievements={achievements} cores={cores} trustedBy={trustedBy} serviceCores={serviceCores} />
      </>
    );
}
