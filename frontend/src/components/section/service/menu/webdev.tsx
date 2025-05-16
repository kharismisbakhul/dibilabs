'use client';

import { ServiceWebdevCores } from "@/types/json/service_webdev_cores";
import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreWebdev from "../webdev/coreWebdev";
import DetailCoreWebdev from "../webdev/detailCoreWebdev";
import HeroWebdev from "../webdev/heroWebdev";
import TrustedByWebdev from "../webdev/trustedByWebdev";

import { useEffect, useState } from 'react';
import { ServiceWebdevTrustedBies } from "@/types/json/service_webdev_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

export default function Webdev() {
  const [cores, setCores] = useState<ServiceWebdevCores[] | null>(null);
  const [trustedBy, setTrustedBy] = useState<ServiceWebdevTrustedBies[] | null>(null);
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

  const fetchDataCores = async () => {
    try {
      // const res = await fetch('/api/service/webdev/cores');
      const res = await fetch('/json/service_webdev_cores.json');
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
      // const res = await fetch('/api/service/webdev/trusted_bies');
      const res = await fetch('/json/service_webdev_trustedBies.json');
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
