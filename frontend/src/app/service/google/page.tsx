import Google from "@/components/section/service/menu/google";
import { getServiceGoogleAchievementsData, getServiceGoogleCoresData, getServiceGoogleTrustedBiesData } from "@/lib/strapi_service_google";
import { getServiceCoresData } from "@/lib/strapi_service";

export const metadata = {
  title: "Service - Google Ads",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [achievements, cores, trustedBy, serviceCores] = await Promise.all([
    getServiceGoogleAchievementsData(),
    getServiceGoogleCoresData(),
    getServiceGoogleTrustedBiesData(),
    getServiceCoresData()
  ]);
  return (
    <>
      <Google achievements={achievements} cores={cores} trustedBy={trustedBy} serviceCores={serviceCores} />
    </>
  );
}
