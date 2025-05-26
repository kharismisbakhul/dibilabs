'use client';

import Navbar from "../core/navbar";
import Footer from "../core/footer";
import Hero from "./homepage/hero";
import Achievements from "./homepage/achievements";
import Partners from "./homepage/partners";
import Cta_services from "./homepage/cta_services";
import Services from "./homepage/services";
import Article_desc from "./homepage/article_desc";
import ArticlesH from "./homepage/articles";

import { useEffect, useState } from 'react';
import { HomepageAchievements } from "@/types/json/homepage_achievements";
import { HomepagePartners } from "@/types/json/homepage_partners";
import { HomepageServices } from "@/types/json/homepage_services";
import { Articles } from "@/types/json/articles";

export default function Homepage() {
  const [achievements, setAchievements] = useState<HomepageAchievements[] | null>(null);
  const [partners, setPartners] = useState<HomepagePartners[] | null>(null);
  const [services, setServices] = useState<HomepageServices[] | null>(null);
  const [articles, setArticles] = useState<Articles[] | null>(null);

  const fetchDataAchievements = async () => {
    try {
      const res = await fetch('/api/homepage/achievements');
      if (!res.ok) {
        throw new Error('Failed to fetch achievements');
      }
      const json = await res.json();
      setAchievements(json.data);
      
    } catch (error) {
      console.error('Failed to fetch achievements:', error);
    }
  };

  const fetchDataPartners = async () => {
    try {
      const res = await fetch('/api/homepage/partners');
      if (!res.ok) {
        throw new Error('Failed to fetch partners');
      }
      const json = await res.json();
      setPartners(json.data);
      
    } catch (error) {
      console.error('Failed to fetch partners:', error);
    }
  };

  const fetchDataServices = async () => {
    try {
      const res = await fetch('/api/homepage/services');
      if (!res.ok) {
        throw new Error('Failed to fetch services');
      }
      const json = await res.json();
      setServices(json.data);
      
    } catch (error) {
      console.error('Failed to fetch services:', error);
    }
  };

  const fetchDataArticles = async () => {
    try {
      const res = await fetch("/api/articles");
      if (!res.ok) {
        throw new Error("Failed to fetch articles");
      }
      const json = await res.json();
      setArticles(json.data);
      
    } catch (error) {
      console.error("Failed to fetch articles:", error);
    }
  };

  useEffect(() => {
    fetchDataAchievements();
    fetchDataPartners();
    fetchDataServices();
    fetchDataArticles();
  }, []);

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
