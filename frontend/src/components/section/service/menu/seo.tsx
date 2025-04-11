import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementsSeo from "../seo/achievementSeo";
import CoreSeo from "../seo/coreSeo";
import DetailCoreSeo from "../seo/detailCoreSeo";
import HeroSeo from "../seo/heroSeo";
import TrustedBySeo from "../seo/trustedBySeo";

export default function Seo() {
  return (
    <>
      <Navbar />
      <HeroSeo />
      <AchievementsSeo/>
      <TrustedBySeo />
      <CoreSeo />
      <DetailCoreSeo />
      <Footer />
    </>
  );
}
