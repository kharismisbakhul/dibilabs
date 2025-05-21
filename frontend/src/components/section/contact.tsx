import Footer from "../core/footer";
import Navbar from "../core/navbar";
import DetailContact from "./contact/detailContact";
// import HeroContact from "./contact/heroContact";

export default function Contact() {
  return (
    <>
      <Navbar />
      {/* <HeroContact/> */}
      <DetailContact/>
      <Footer />
    </>
  );
}
