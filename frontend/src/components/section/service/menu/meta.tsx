'use client';

import { ServiceMetaAchievements } from "@/types/json/service_meta_achievements";
import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementMeta from "../meta/achievementMeta";
import CoreMeta from "../meta/coreMeta";
import DetailCoreMeta from "../meta/detailCoreMeta";
import HeroMeta from "../meta/heroMeta";
import TrustedByMeta from "../meta/trustedByMeta";

import { useEffect, useState } from 'react';
import { ServiceMetaCores } from "@/types/json/service_meta_cores";
import { ServiceMetaTrustedBies } from "@/types/json/service_meta_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

export default function Meta() {
  const [achievements, setAchievements] = useState<ServiceMetaAchievements[] | null>(null);
  const [cores, setCores] = useState<ServiceMetaCores[] | null>(null);
  const [trustedBy, setTrustedBy] = useState<ServiceMetaTrustedBies[] | null>(null);
  const [serviceCores, setServiceCores] = useState<ServiceCores[] | null>(null);

  const fetchDataServiceCores = async () => {
    try {
      const res = await fetch('/api/service/cores');
      // const res = await fetch('/json/service_cores.json');
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
      const res = await fetch('/api/service/meta/achievements');
      // const res = await fetch('/json/service_meta_achievements.json');
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
      const res = await fetch('/api/service/meta/cores');
      // const res = await fetch('/json/service_meta_cores.json');
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
      const res = await fetch('/api/service/meta/trusted_bies');
      // const res = await fetch('/json/service_meta_trustedBies.json');
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
      <HeroMeta />
      {achievements && <AchievementMeta data={achievements}/>}
      {trustedBy && <TrustedByMeta data={trustedBy}/>}
      {serviceCores && <CoreMeta data={serviceCores}/>}
      {cores && <DetailCoreMeta data={cores}/>}
      <Footer />
    </>
  );
}
