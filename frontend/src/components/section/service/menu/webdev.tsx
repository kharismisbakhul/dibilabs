import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreWebdev from "../webdev/coreWebdev";
import DetailCoreWebdev from "../webdev/detailCoreWebdev";
import HeroWebdev from "../webdev/heroWebdev";
import TrustedByWebdev from "../webdev/trustedByWebdev";

export default function Webdev() {
  return (
    <>
      <Navbar />
      <HeroWebdev />
      <TrustedByWebdev />
      <CoreWebdev />
      <DetailCoreWebdev />
      <Footer />
    </>
  );
}
