import Footer from "../core/footer";
import Navbar from "../core/navbar";
import Brand_marketing from "./service/brand_marketing";
import Data_decision from "./service/data_decision";
import Hero_service from "./service/hero_service";
import Service_stack from "./service/service_stack";

export default function Service() {
  return (
    <>
      <Navbar />
      <Hero_service/>
      <Brand_marketing/>
      <Service_stack/>
      <Data_decision/>
      <Footer />
    </>
  );
}
