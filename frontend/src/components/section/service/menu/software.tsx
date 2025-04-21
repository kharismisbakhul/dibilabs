'use client';

import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreSoftware from "../software/coreSoftware";
import DetailCoreSoftware from "../software/detailCoreSoftware";
import HeroSoftware from "../software/heroSoftware";
import TrustedBySoftware from "../software/trustedBySoftware";

import { useEffect, useState } from 'react';

export default function Software() {
  const [cores, setCores] = useState(null);
  const [trustedBy, setTrustedBy] = useState(null);

  const fetchDataCores = async () => {
    try {
      const res = await fetch('/api/service/software/cores');
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
      const res = await fetch('/api/service/software/trusted_bies');
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
    fetchDataCores();
    fetchDataTrustedBy();
  }, []);
  
  return (
    <>
      <Navbar />
      <HeroSoftware/>
      <TrustedBySoftware/>
      <CoreSoftware/>
      <DetailCoreSoftware/>
      <Footer />
    </>
  );
}
