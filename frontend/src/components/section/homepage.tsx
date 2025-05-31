import Navbar from "../core/navbar";
import Footer from "../core/footer";
import Hero from "./homepage/hero";
import Achievements from "./homepage/achievements";
import Partners from "./homepage/partners";
import Cta_services from "./homepage/cta_services";
import Services from "./homepage/services";
import Article_desc from "./homepage/article_desc";
import ArticlesH from "./homepage/articles";

import { HomepageAchievements } from "@/types/json/homepage_achievements";
import { HomepagePartners } from "@/types/json/homepage_partners";
import { HomepageServices } from "@/types/json/homepage_services";
import { Articles } from "@/types/json/articles";

interface HomepageProps {
  achievements: HomepageAchievements[] | null;
  partners: HomepagePartners[] | null;
  services: HomepageServices[] | null;
  articles: Articles[] | null;
}

export default function Homepage({achievements, partners, services, articles} : HomepageProps) {
  return (
    <>
      <>
      <Navbar />
      <Hero />
      {achievements && <Achievements data={achievements} />}
      {partners && <Partners data={partners} />}
      <Cta_services />
      {services && <Services data={services} />}
      <Article_desc />
      {articles && <ArticlesH data={articles}/>}
      <Footer />
    </>
    </>
  );
}
