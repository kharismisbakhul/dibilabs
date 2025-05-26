'use client';

import Footer from "../core/footer";
import Navbar from "../core/navbar";
import About_us from "./about/about_us";
import Hero_about from "./about/hero_about";
import Team from "./about/team";
import Vission_mission from "./about/vission_mission";

import { useEffect, useState } from 'react';
import { AboutTeams } from "@/types/json/about_teams";
import { AboutPhoto } from "@/types/json/about_photo";

export default function About() {
  const [photo, setPhoto] = useState<AboutPhoto | null>(null);
  const [teams, setTeams] = useState<AboutTeams[] | null>(null);

  const fetchDataPhoto = async () => {
    try {
      const res = await fetch('/api/about/photo');
      if (!res.ok) {
        throw new Error('Failed to fetch photo');
      }
      const json = await res.json();
      setPhoto(json.data);
      
    } catch (error) {
      console.error('Failed to fetch photo:', error);
    }
  };

  const fetchDataTeams = async () => {
    try {
      const res = await fetch('/api/about/teams');
      if (!res.ok) {
        throw new Error('Failed to fetch teams');
      }
      const json = await res.json();
      setTeams(json.data);
      
    } catch (error) {
      console.error('Failed to fetch teams:', error);
    }
  };

  useEffect(() => {
    fetchDataPhoto();
    fetchDataTeams();
  }, []);
  
  return (
    <>
      <Navbar />
      <Hero_about/>
      {photo && <About_us data={photo}/>}
      <Vission_mission/>
      {teams && <Team data={teams}/>}
      <Footer />
    </>
  );
}
