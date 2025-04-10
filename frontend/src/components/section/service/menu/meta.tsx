import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementMeta from "../meta/achievementMeta";
import CoreMeta from "../meta/coreMeta";
import DetailCoreMeta from "../meta/detailCoreMeta";
import HeroMeta from "../meta/heroMeta";
import TrustedByMeta from "../meta/trustedByMeta";

export default function Meta() {
  return (
    <>
      <Navbar />
      <HeroMeta />
      <AchievementMeta />
      <TrustedByMeta />
      <CoreMeta />
      <DetailCoreMeta />
      <Footer />
    </>
  );
}
