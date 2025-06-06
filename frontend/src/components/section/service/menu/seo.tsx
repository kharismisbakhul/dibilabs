'use client';

import { ServiceSeoAchievements } from "@/types/json/service_seo_achievements";
import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementSeo from "../seo/achievementSeo";
import CoreSeo from "../seo/coreSeo";
import DetailCoreSeo from "../seo/detailCoreSeo";
import HeroSeo from "../seo/heroSeo";
import TrustedBySeo from "../seo/trustedBySeo";

import { useEffect, useState } from 'react';
import { ServiceSeoCores } from "@/types/json/service_seo_cores";
import { ServiceSeoTrustedBies } from "@/types/json/service_seo_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

export default function Seo() {
  const [achievements, setAchievements] = useState<ServiceSeoAchievements[] | null>(null);
  const [cores, setCores] = useState<ServiceSeoCores[] | null>(null);
  const [trustedBy, setTrustedBy] = useState<ServiceSeoTrustedBies[] | null>(null);
  const [serviceCores, setServiceCores] = useState<ServiceCores[] | null>(null);

  const fetchDataServiceCores = async () => {
    try {
      // const res = await fetch('/api/service/cores');
      const res = await fetch('/json/service_cores.json');
      if (!res.ok) {
        throw new Error('Failed to fetch service cores');
      }
      const json = await res.json();
      setServiceCores(json.data);
      
    } catch (error) {
      console.error('Failed to fetch service cores:', error);
    }
  };

  const fetchDataAchievements = async () => {
    try {
      // const res = await fetch('/api/service/seo/achievements');
      const res = await fetch('/json/service_seo_achievements.json');
      if (!res.ok) {
        throw new Error('Failed to fetch achievements');
      }
      const json = await res.json();
      setAchievements(json.data);
      
    } catch (error) {
      console.error('Failed to fetch achievements:', error);
    }
  };

  const fetchDataCores = async () => {
    try {
      // const res = await fetch('/api/service/seo/cores');
      const res = await fetch('/json/service_seo_cores.json');
      if (!res.ok) {
        throw new Error('Failed to fetch cores');
      }
      const json = await res.json();
      setCores(json.data);
      
    } catch (error) {
      console.error('Failed to fetch cores:', error);
    }
  };

  const fetchDataTrustedBy = async () => {
    try {
      // const res = await fetch('/api/service/seo/trusted_bies');
      const res = await fetch('/json/service_seo_trustedBies.json');
      if (!res.ok) {
        throw new Error('Failed to fetch trustedBy');
      }
      const json = await res.json();
      setTrustedBy(json.data);
      
    } catch (error) {
      console.error('Failed to fetch trustedBy:', error);
    }
  };

  useEffect(() => {
    fetchDataServiceCores();
    fetchDataAchievements();
    fetchDataCores();
    fetchDataTrustedBy();
  }, []);

  return (
    <>
      <Navbar />
      <HeroSeo />
      {achievements && <AchievementSeo data={achievements}/>}
      {trustedBy && <TrustedBySeo data={trustedBy}/>}
      {serviceCores && <CoreSeo data={serviceCores}/>}
      {cores && <DetailCoreSeo data={cores}/>}
      <Footer />
    </>
  );
}
