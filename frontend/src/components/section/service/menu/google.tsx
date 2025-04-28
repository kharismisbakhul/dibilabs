'use client';

import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementGoogle from "../google/achievementGoogle";
import CoreGoogle from "../google/coreGoogle";
import DetailCoreGoogle from "../google/detailCoreGoogle";
import HeroGoogle from "../google/heroGoogle";
import TrustedByGoogle from "../google/trustedByGoogle";

import { useEffect, useState } from 'react';

export default function Google() {
  const [achievements, setAchievements] = useState<any[] | null>(null);
  const [cores, setCores] = useState<any[] | null>(null);
  const [trustedBy, setTrustedBy] = useState<any[] | null>(null);
  const [serviceCores, setServiceCores] = useState<any[] | null>(null);

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
      // const res = await fetch('/api/service/google/achievements');
      const res = await fetch('/json/service_google_achievements.json');
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
      // const res = await fetch('/api/service/google/cores');
      const res = await fetch('/json/service_google_cores.json');
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
      // const res = await fetch('/api/service/google/trusted_bies');
      const res = await fetch('/json/service_google_trustedBies.json');
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
      <HeroGoogle />
      {achievements && <AchievementGoogle data={achievements}/>}
      {trustedBy && <TrustedByGoogle data={trustedBy}/>}
      {serviceCores && <CoreGoogle data={serviceCores}/>}
      {cores && <DetailCoreGoogle data={cores}/>}
      <Footer />
    </>
  );
}
