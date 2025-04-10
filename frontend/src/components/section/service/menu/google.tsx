import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementGoogle from "../google/achievementGoogle";
import CoreGoogle from "../google/coreGoogle";
import DetailCoreGoogle from "../google/detailCoreGoogle";
import HeroGoogle from "../google/heroGoogle";
import TrustedByGoogle from "../google/trustedByGoogle";

export default function Google() {
  return (
    <>
      <Navbar />
      <HeroGoogle />
      <AchievementGoogle/>
      <TrustedByGoogle />
      <CoreGoogle />
      <DetailCoreGoogle />
      <Footer />
    </>
  );
}
