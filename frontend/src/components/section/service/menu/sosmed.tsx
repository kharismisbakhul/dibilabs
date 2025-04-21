'use client';

import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import AchievementSosmed from "../sosmed/achievementSosmed";
import CoreSosmed from "../sosmed/coreSosmed";
import DetailCore from "../sosmed/detailCore";
import HeroSosmed from "../sosmed/heroSosmed";
import TrustedBy from "../sosmed/trustedBy";

import { useEffect, useState } from 'react';

export default function Sosmed() {
  const [achievements, setAchievements] = useState(null);
  const [cores, setCores] = useState(null);
  const [trustedBy, setTrustedBy] = useState(null);

  const fetchDataAchievements = async () => {
    try {
      const res = await fetch('/api/service/sosmed/achievements');
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
      const res = await fetch('/api/service/sosmed/cores');
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
      const res = await fetch('/api/service/sosmed/trusted_bies');
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
      <HeroSosmed/>
      <AchievementSosmed/>
      <TrustedBy/>
      <CoreSosmed/>
      <DetailCore/>
      <Footer />
    </>
  );
}
