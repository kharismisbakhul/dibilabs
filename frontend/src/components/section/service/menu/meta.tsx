import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementMeta from "../meta/achievementMeta";
import CoreMeta from "../meta/coreMeta";
import DetailCoreMeta from "../meta/detailCoreMeta";
import HeroMeta from "../meta/heroMeta";
import TrustedByMeta from "../meta/trustedByMeta";

import { ServiceMetaAchievements } from "@/types/json/service_meta_achievements";
import { ServiceMetaCores } from "@/types/json/service_meta_cores";
import { ServiceMetaTrustedBies } from "@/types/json/service_meta_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

interface ServicepageMetaProps {
  achievements: ServiceMetaAchievements[] | null;
  cores: ServiceMetaCores[] | null;
  trustedBy: ServiceMetaTrustedBies[] | null;
  serviceCores: ServiceCores[] | null;
}

export default function Meta({achievements, cores, trustedBy, serviceCores} : ServicepageMetaProps) {
  return (
    <>
      <Navbar />
      <HeroMeta />
      {achievements && <AchievementMeta data={achievements}/>}
      {trustedBy && <TrustedByMeta data={trustedBy}/>}
      {serviceCores && <CoreMeta data={serviceCores}/>}
      {cores && <DetailCoreMeta data={cores}/>}
      <Footer />
    </>
  );
}
