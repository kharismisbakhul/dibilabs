import Meta from "@/components/section/service/menu/meta";
import { getServiceMetaAchievementsData, getServiceMetaCoresData, getServiceMetaTrustedBiesData } from "@/lib/strapi_service_meta";
import { getServiceCoresData } from "@/lib/strapi_service";

export const metadata = {
  title: "Service - Meta Ads",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [achievements, cores, trustedBy, serviceCores] = await Promise.all([
      getServiceMetaAchievementsData(),
      getServiceMetaCoresData(),
      getServiceMetaTrustedBiesData(),
      getServiceCoresData()
    ]);
    return (
      <>
        <Meta achievements={achievements} cores={cores} trustedBy={trustedBy} serviceCores={serviceCores} />
      </>
    );
}
