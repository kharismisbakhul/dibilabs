import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreSoftware from "../software/coreSoftware";
import DetailCoreSoftware from "../software/detailCoreSoftware";
import HeroSoftware from "../software/heroSoftware";
import TrustedBySoftware from "../software/trustedBySoftware";

export default function Software() {
  return (
    <>
      <Navbar />
      <HeroSoftware/>
      <TrustedBySoftware/>
      <CoreSoftware/>
      <DetailCoreSoftware/>
      <Footer />
    </>
  );
}
