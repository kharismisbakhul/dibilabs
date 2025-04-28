'use client';

import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementSosmed from "../sosmed/achievementSosmed";
import CoreSosmed from "../sosmed/coreSosmed";
import DetailCoreSosmed from "../sosmed/detailCoreSosmed";
import HeroSosmed from "../sosmed/heroSosmed";
import TrustedBySosmed from "../sosmed/trustedBySosmed";

import { useEffect, useState } from 'react';

export default function Sosmed() {
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
      // const res = await fetch('/api/service/sosmed/achievements');
      const res = await fetch('/json/service_sosmed_achievements.json');
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
      // const res = await fetch('/api/service/sosmed/cores');
      const res = await fetch('/json/service_sosmed_cores.json');
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
      // const res = await fetch('/api/service/sosmed/trusted_bies');
      const res = await fetch('/json/service_sosmed_trustedBies.json');
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
      <HeroSosmed/>
      {achievements && <AchievementSosmed data={achievements}/>}
      {trustedBy && <TrustedBySosmed data={trustedBy}/>}
      {serviceCores && <CoreSosmed data={serviceCores}/>}
      {cores && <DetailCoreSosmed data={cores}/>}
      <Footer />
    </>
  );
}
