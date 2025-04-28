'use client';

import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreWebdev from "../webdev/coreWebdev";
import DetailCoreWebdev from "../webdev/detailCoreWebdev";
import HeroWebdev from "../webdev/heroWebdev";
import TrustedByWebdev from "../webdev/trustedByWebdev";

import { useEffect, useState } from 'react';

export default function Webdev() {
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
    fetchDataServiceCores();
    fetchDataCores();
    fetchDataTrustedBy();
  }, []);

  return (
    <>
      <Navbar />
      <HeroWebdev />
      {trustedBy && <TrustedByWebdev data={trustedBy}/>}
      {serviceCores && <CoreWebdev data={serviceCores}/>}
      {cores && <DetailCoreWebdev data={cores}/>}
      <Footer />
    </>
  );
}
