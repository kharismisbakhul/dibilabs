import Sosmed from "@/components/section/service/menu/sosmed";
import { getServiceSosmedAchievementsData, getServiceSosmedCoresData, getServiceSosmedTrustedBiesData } from "@/lib/strapi_service_sosmed";
import { getServiceCoresData } from "@/lib/strapi_service";

export const metadata = {
  title: "Service - Social Media Management",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [achievements, cores, trustedBy, serviceCores] = await Promise.all([
      getServiceSosmedAchievementsData(),
      getServiceSosmedCoresData(),
      getServiceSosmedTrustedBiesData(),
      getServiceCoresData()
    ]);
    return (
      <>
        <Sosmed achievements={achievements} cores={cores} trustedBy={trustedBy} serviceCores={serviceCores} />
      </>
    );
}
