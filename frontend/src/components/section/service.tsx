'use client';

import Footer from "../core/footer";
import Navbar from "../core/navbar";
import Brand_marketing from "./service/brand_marketing";
import Data_decision from "./service/data_decision";
import Hero_service from "./service/hero_service";
import Service_stack from "./service/service_stack";

import { useEffect, useState } from 'react';

export default function Service() {
  const [cores, setCores] = useState(null);
  const [lists, setLists] = useState(null);

  const fetchDataCores = async () => {
    try {
      const res = await fetch('/api/service/cores');
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

  const fetchDataLists = async () => {
    try {
      const res = await fetch('/api/service/lists');
      if (!res.ok) {
        throw new Error('Failed to fetch lists');
      }
      const json = await res.json();
      setLists(json.data);
      console.log(json.data);
    } catch (error) {
      console.error('Failed to fetch lists:', error);
    }
  };

  useEffect(() => {
    fetchDataCores();
    fetchDataLists();
  }, []);

  return (
    <>
      <Navbar />
      <Hero_service/>
      <Brand_marketing/>
      <Service_stack/>
      <Data_decision/>
      <Footer />
    </>
  );
}
