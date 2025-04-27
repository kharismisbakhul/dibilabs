'use client';

import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementMeta from "../meta/achievementMeta";
import CoreMeta from "../meta/coreMeta";
import DetailCoreMeta from "../meta/detailCoreMeta";
import HeroMeta from "../meta/heroMeta";
import TrustedByMeta from "../meta/trustedByMeta";

import { useEffect, useState } from 'react';

export default function Meta() {
  const [achievements, setAchievements] = useState<any[] | null>(null);
  const [cores, setCores] = useState<any[] | null>(null);
  const [trustedBy, setTrustedBy] = useState<any[] | null>(null);
  const [serviceCores, setServiceCores] = useState<any[] | null>(null);

  const fetchDataServiceCores = async () => {
    try {
      const res = await fetch('/api/service/cores');
      if (!res.ok) {
        throw new Error('Failed to fetch service cores');
      }
      const json = await res.json();
      setServiceCores(json.data);
      console.log(json.data);
    } catch (error) {
      console.error('Failed to fetch service cores:', error);
    }
  };

  const fetchDataAchievements = async () => {
    try {
      const res = await fetch('/api/service/meta/achievements');
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

  const fetchDataCores = async () => {
    try {
      const res = await fetch('/api/service/meta/cores');
      if (!res.ok) {
        throw new Error('Failed to fetch cores');
      }
      const json = await res.json();
      setCores(json.data);
      console.log(json.data);
    } catch (error) {
      console.error('Failed to fetch cores:', error);
    }
  };

  const fetchDataTrustedBy = async () => {
    try {
      const res = await fetch('/api/service/meta/trusted_bies');
      if (!res.ok) {
        throw new Error('Failed to fetch trustedBy');
      }
      const json = await res.json();
      setTrustedBy(json.data);
      console.log(json.data);
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
      <AchievementMeta />
      <TrustedByMeta />
      <CoreMeta />
      <DetailCoreMeta />
      <Footer />
    </>
  );
}
