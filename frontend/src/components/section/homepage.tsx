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

import { useEffect, useState } from 'react';

export default function Homepage() {
  const [achievements, setAchievements] = useState<any[] | null>(null);
  const [partners, setPartners] = useState<any[] | null>(null);
  const [services, setServices] = useState<any[] | null>(null);

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

  useEffect(() => {
    fetchDataAchievements();
    fetchDataPartners();
    fetchDataServices();
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
      <Articles />
      <Footer />
    </>
    </>
  );
}
