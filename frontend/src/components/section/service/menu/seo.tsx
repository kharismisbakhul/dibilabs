import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementSeo from "../seo/achievementSeo";
import CoreSeo from "../seo/coreSeo";
import DetailCoreSeo from "../seo/detailCoreSeo";
import HeroSeo from "../seo/heroSeo";
import TrustedBySeo from "../seo/trustedBySeo";

import { ServiceSeoAchievements } from "@/types/json/service_seo_achievements";
import { ServiceSeoCores } from "@/types/json/service_seo_cores";
import { ServiceSeoTrustedBies } from "@/types/json/service_seo_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

interface ServicepageSeoProps {
  achievements: ServiceSeoAchievements[] | null;
  cores: ServiceSeoCores[] | null;
  trustedBy: ServiceSeoTrustedBies[] | null;
  serviceCores: ServiceCores[] | null;
}

export default function Seo({achievements, cores, trustedBy, serviceCores} : ServicepageSeoProps) {
  return (
    <>
      <Navbar />
      <HeroSeo />
      {achievements && <AchievementSeo data={achievements}/>}
      {trustedBy && <TrustedBySeo data={trustedBy}/>}
      {serviceCores && <CoreSeo data={serviceCores}/>}
      {cores && <DetailCoreSeo data={cores}/>}
      <Footer />
    </>
  );
}
