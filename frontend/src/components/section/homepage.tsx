'use client';

import Navbar from "../core/navbar";
import Footer from "../core/footer";
import Hero from "./homepage/hero";
import Achievements from "./homepage/achievements";
import Partners from "./homepage/partners";
import Cta_services from "./homepage/cta_services";
import Services from "./homepage/services";
import Article_desc from "./homepage/article_desc";
import Articles from "./homepage/articles";

export default function Homepage() {
  return (
    <>
      <Navbar/>
      <Hero/>
      <Achievements/>
      <Partners/>
      <Cta_services/>
      <Services/>
      <Article_desc/>
      <Articles/>
      <Footer/>
    </>
  );
}
