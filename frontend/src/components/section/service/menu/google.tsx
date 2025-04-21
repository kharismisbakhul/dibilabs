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
  const [achievements, setAchievements] = useState(null);
  const [cores, setCores] = useState(null);
  const [trustedBy, setTrustedBy] = useState(null);

  const fetchDataAchievements = async () => {
    try {
      const res = await fetch('/api/service/google/achievements');
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
      const res = await fetch('/api/service/google/cores');
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
      const res = await fetch('/api/service/google/trusted_bies');
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
    fetchDataAchievements();
    fetchDataCores();
    fetchDataTrustedBy();
  }, []);

  return (
    <>
      <Navbar />
      <HeroGoogle />
      <AchievementGoogle/>
      <TrustedByGoogle />
      <CoreGoogle />
      <DetailCoreGoogle />
      <Footer />
    </>
  );
}
