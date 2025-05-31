import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreWebdev from "../webdev/coreWebdev";
import DetailCoreWebdev from "../webdev/detailCoreWebdev";
import HeroWebdev from "../webdev/heroWebdev";
import TrustedByWebdev from "../webdev/trustedByWebdev";

import { ServiceWebdevCores } from "@/types/json/service_webdev_cores";
import { ServiceWebdevTrustedBies } from "@/types/json/service_webdev_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

interface ServicepageWebdevProps {
  cores: ServiceWebdevCores[] | null;
  trustedBy: ServiceWebdevTrustedBies[] | null;
  serviceCores: ServiceCores[] | null;
}

export default function Webdev({cores, trustedBy, serviceCores} : ServicepageWebdevProps) {
  return (
    <>
      <Navbar />
      <HeroWebdev />
      {trustedBy && <TrustedByWebdev data={trustedBy}/>}
      {serviceCores && <CoreWebdev data={serviceCores}/>}
      {cores && <DetailCoreWebdev data={cores}/>}
      <Footer />
    </>
  );
}
