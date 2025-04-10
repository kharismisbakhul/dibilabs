import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementSosmed from "../sosmed/achievementSosmed";
import CoreSosmed from "../sosmed/coreSosmed";
import DetailCore from "../sosmed/detailCore";
import HeroSosmed from "../sosmed/heroSosmed";
import TrustedBy from "../sosmed/trustedBy";

export default function Sosmed() {
  return (
    <>
      <Navbar />
      <HeroSosmed/>
      <AchievementSosmed/>
      <TrustedBy/>
      <CoreSosmed/>
      <DetailCore/>
      <Footer />
    </>
  );
}
