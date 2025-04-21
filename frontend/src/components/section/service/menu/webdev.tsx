'use client';

import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreWebdev from "../webdev/coreWebdev";
import DetailCoreWebdev from "../webdev/detailCoreWebdev";
import HeroWebdev from "../webdev/heroWebdev";
import TrustedByWebdev from "../webdev/trustedByWebdev";

import { useEffect, useState } from 'react';

export default function Webdev() {
  const [cores, setCores] = useState(null);
  const [trustedBy, setTrustedBy] = useState(null);

  const fetchDataCores = async () => {
    try {
      const res = await fetch('/api/service/webdev/cores');
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
      const res = await fetch('/api/service/webdev/trusted_bies');
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
      <HeroWebdev />
      <TrustedByWebdev />
      <CoreWebdev />
      <DetailCoreWebdev />
      <Footer />
    </>
  );
}
