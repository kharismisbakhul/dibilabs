import Software from "@/components/section/service/menu/software";
import { getServiceSoftwareCoresData, getServiceSoftwareTrustedBiesData } from "@/lib/strapi_service_software";
import { getServiceCoresData } from "@/lib/strapi_service";

export const metadata = {
  title: "Service - Software & Web App Dev",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [cores, trustedBy, serviceCores] = await Promise.all([
      getServiceSoftwareCoresData(),
      getServiceSoftwareTrustedBiesData(),
      getServiceCoresData()
    ]);
    return (
      <>
        <Software cores={cores} trustedBy={trustedBy} serviceCores={serviceCores} />
      </>
    );
}