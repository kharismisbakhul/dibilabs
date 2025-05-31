import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreSoftware from "../software/coreSoftware";
import DetailCoreSoftware from "../software/detailCoreSoftware";
import HeroSoftware from "../software/heroSoftware";
import TrustedBySoftware from "../software/trustedBySoftware";

import { ServiceSoftwareCores } from "@/types/json/service_software_cores";
import { ServiceSoftwareTrustedBies } from "@/types/json/service_software_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

interface ServicepageSoftwareProps {
  cores: ServiceSoftwareCores[] | null;
  trustedBy: ServiceSoftwareTrustedBies[] | null;
  serviceCores: ServiceCores[] | null;
}

export default function Software({cores, trustedBy, serviceCores} : ServicepageSoftwareProps) {
  return (
    <>
      <Navbar />
      <HeroSoftware/>
      {trustedBy && <TrustedBySoftware data={trustedBy}/>}
      {serviceCores && <CoreSoftware data={serviceCores}/>}
      {cores && <DetailCoreSoftware data={cores}/>}
      <Footer />
    </>
  );
}
