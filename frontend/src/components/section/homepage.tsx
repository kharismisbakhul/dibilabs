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
  const [achievements, setAchievements] = useState(null);
  const [partners, setPartners] = useState(null);
  const [services, setServices] = useState(null);

  const fetchDataAchievements = async () => {
    try {
      const res = await fetch('/api/homepage/achievements');
      if (!res.ok) {
        throw new Error('Failed to fetch achievements');
      }
      const json = await res.json();
      setAchievements(json.data);
      console.log(json.data);
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
      console.log(json.data);
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
      console.log(json.data);
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
