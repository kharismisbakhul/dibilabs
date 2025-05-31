import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementGoogle from "../google/achievementGoogle";
import CoreGoogle from "../google/coreGoogle";
import DetailCoreGoogle from "../google/detailCoreGoogle";
import HeroGoogle from "../google/heroGoogle";
import TrustedByGoogle from "../google/trustedByGoogle";

import { ServiceGoogleAchievements } from "@/types/json/service_google_achievements";
import { ServiceGoogleTrustedBies } from "@/types/json/service_google_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";
import { ServiceGoogleCores } from "@/types/json/service_google_cores";

interface ServicepageGoogleProps {
  achievements: ServiceGoogleAchievements[] | null;
  cores: ServiceGoogleCores[] | null;
  trustedBy: ServiceGoogleTrustedBies[] | null;
  serviceCores: ServiceCores[] | null;
}

export default function Google({achievements, cores, trustedBy, serviceCores} : ServicepageGoogleProps) {
  return (
    <>
      <Navbar />
      <HeroGoogle />
      {achievements && <AchievementGoogle data={achievements}/>}
      {trustedBy && <TrustedByGoogle data={trustedBy}/>}
      {serviceCores && <CoreGoogle data={serviceCores}/>}
      {cores && <DetailCoreGoogle data={cores}/>}
      <Footer />
    </>
  );
}
