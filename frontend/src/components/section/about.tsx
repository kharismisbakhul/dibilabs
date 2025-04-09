import Footer from "../core/footer";
import Navbar from "../core/navbar";
import About_us from "./about/about_us";
import Hero_about from "./about/hero_about";
import Team from "./about/team";
import Vission_mission from "./about/vission_mission";

export default function About() {
  return (
    <>
      <Navbar />
      <Hero_about/>
      <About_us/>
      <Vission_mission/>
      <Team/>
      <Footer />
    </>
  );
}
