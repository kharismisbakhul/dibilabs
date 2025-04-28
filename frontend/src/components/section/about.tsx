'use client';

import Footer from "../core/footer";
import Navbar from "../core/navbar";
import About_us from "./about/about_us";
import Hero_about from "./about/hero_about";
import Team from "./about/team";
import Vission_mission from "./about/vission_mission";

import { useEffect, useState } from 'react';

export default function About() {
  const [photo, setPhoto] = useState<any | null>(null);
  const [teams, setTeams] = useState<any[] | null>(null);

  const fetchDataPhoto = async () => {
    try {
      // const res = await fetch('/api/about/photo');
      const res = await fetch('/json/about_photo.json');
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
      // const res = await fetch('/api/about/teams');
      const res = await fetch('/json/about_teams.json');
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
