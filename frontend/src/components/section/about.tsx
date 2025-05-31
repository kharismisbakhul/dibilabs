import Footer from "../core/footer";
import Navbar from "../core/navbar";
import About_us from "./about/about_us";
import Hero_about from "./about/hero_about";
import Team from "./about/team";
import Vission_mission from "./about/vission_mission";

import { AboutTeams } from "@/types/json/about_teams";
import { AboutPhoto } from "@/types/json/about_photo";

interface AboutpageProps {
  teams: AboutTeams[] | null;
  photo: AboutPhoto | null;
}

export default function About({teams, photo} : AboutpageProps) {
  
  return (
    <>
      <Navbar />
      <Hero_about/>
      {photo && <About_us data={photo}/>}
      <Vission_mission/>
      {teams && <Team data={teams}/>}
      <Footer />
    </>
  );
}
