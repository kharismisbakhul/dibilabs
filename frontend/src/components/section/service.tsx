'use client';

import Footer from "../core/footer";
import Navbar from "../core/navbar";
import Brand_marketing from "./service/brand_marketing";
import Data_decision from "./service/data_decision";
import Hero_service from "./service/hero_service";
import Service_stack from "./service/service_stack";

import { useEffect, useState } from 'react';
import { ServiceLists } from "@/types/json/service_lists";
import { ServiceCards } from "@/types/json/service_cards";

export default function Service() {
  const [lists, setLists] = useState<ServiceLists[] | null>(null);
  const [cards, setCards] = useState<ServiceCards[] | null>(null);

  const fetchDataLists = async () => {
    try {
      // const res = await fetch('/api/service/lists');
      const res = await fetch('/json/service_lists.json');
      if (!res.ok) {
        throw new Error('Failed to fetch lists');
      }
      const json = await res.json();
      setLists(json.data);
      
    } catch (error) {
      console.error('Failed to fetch lists:', error);
    }
  };

  const fetchDataCards = async () => {
    try {
      // const res = await fetch('/api/service/cards');
      const res = await fetch('/json/service_cards.json');
      if (!res.ok) {
        throw new Error('Failed to fetch cards');
      }
      const json = await res.json();
      setCards(json.data);
      
    } catch (error) {
      console.error('Failed to fetch cards:', error);
    }
  };

  useEffect(() => {
    fetchDataLists();
    fetchDataCards();
  }, []);

  return (
    <>
      <Navbar />
      <Hero_service/>
      <Brand_marketing/>
      {lists && <Service_stack data={lists}/>}
      {cards && <Data_decision data={cards}/>}
      <Footer />
    </>
  );
}
