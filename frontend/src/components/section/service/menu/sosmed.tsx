import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementSosmed from "../sosmed/achievementSosmed";
import CoreSosmed from "../sosmed/coreSosmed";
import DetailCoreSosmed from "../sosmed/detailCoreSosmed";
import HeroSosmed from "../sosmed/heroSosmed";
import TrustedBySosmed from "../sosmed/trustedBySosmed";

import { ServiceSosmedAchievements } from "@/types/json/service_sosmed_achievements";
import { ServiceSosmedCores } from "@/types/json/service_sosmed_cores";
import { ServiceSosmedTrustedBies } from "@/types/json/service_sosmed_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

interface ServicepageSosmedProps {
  achievements: ServiceSosmedAchievements[] | null;
  cores: ServiceSosmedCores[] | null;
  trustedBy: ServiceSosmedTrustedBies[] | null;
  serviceCores: ServiceCores[] | null;
}

export default function Sosmed({achievements, cores, trustedBy, serviceCores} : ServicepageSosmedProps) {
  return (
    <>
      <Navbar />
      <HeroSosmed/>
      {achievements && <AchievementSosmed data={achievements}/>}
      {trustedBy && <TrustedBySosmed data={trustedBy}/>}
      {serviceCores && <CoreSosmed data={serviceCores}/>}
      {cores && <DetailCoreSosmed data={cores}/>}
      <Footer />
    </>
  );
}
