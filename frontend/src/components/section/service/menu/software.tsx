'use client';

import { ServiceSoftwareCores } from "@/types/json/service_software_cores";
import Footer from "../../../core/footer";
import Navbar from "../../../core/navbar";
import CoreSoftware from "../software/coreSoftware";
import DetailCoreSoftware from "../software/detailCoreSoftware";
import HeroSoftware from "../software/heroSoftware";
import TrustedBySoftware from "../software/trustedBySoftware";

import { useEffect, useState } from 'react';
import { ServiceSoftwareTrustedBies } from "@/types/json/service_software_trustedBies";
import { ServiceCores } from "@/types/json/service_cores";

export default function Software() {
  const [cores, setCores] = useState<ServiceSoftwareCores[] | null>(null);
  const [trustedBy, setTrustedBy] = useState<ServiceSoftwareTrustedBies[] | null>(null);
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
      // const res = await fetch('/api/service/software/cores');
      const res = await fetch('/json/service_software_cores.json');
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
      // const res = await fetch('/api/service/software/trusted_bies');
      const res = await fetch('/json/service_software_trustedBies.json');
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
      <HeroSoftware/>
      {trustedBy && <TrustedBySoftware data={trustedBy}/>}
      {serviceCores && <CoreSoftware data={serviceCores}/>}
      {cores && <DetailCoreSoftware data={cores}/>}
      <Footer />
    </>
  );
}
