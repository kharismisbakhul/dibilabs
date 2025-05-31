import Webdev from "@/components/section/service/menu/webdev";
import { getServiceWebdevCoresData, getServiceWebdevTrustedBiesData } from "@/lib/strapi_service_webdev";
import { getServiceCoresData } from "@/lib/strapi_service";

export const metadata = {
  title: "Service - Website Development",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [cores, trustedBy, serviceCores] = await Promise.all([
      getServiceWebdevCoresData(),
      getServiceWebdevTrustedBiesData(),
      getServiceCoresData()
    ]);
    return (
      <>
        <Webdev cores={cores} trustedBy={trustedBy} serviceCores={serviceCores} />
      </>
    );
}