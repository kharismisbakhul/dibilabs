'use client';

import Footer from "../core/footer";
import Navbar from "../core/navbar";
import HeroArticle from "./article/heroArticle";
import NewestArticle from "./article/newestArticle";

import { useEffect, useState } from "react";

export default function Article() {
  const [articles, setArticles] = useState<any[] | null>(null);

  const fetchDataArticles = async () => {
    try {
      const res = await fetch("/api/articles");
      if (!res.ok) {
        throw new Error("Failed to fetch articles");
      }
      const json = await res.json();
      setArticles(json.data);
      
    } catch (error) {
      console.error("Failed to fetch articles:", error);
    }
  };

  useEffect(() => {
    fetchDataArticles();
  }, []);

  return (
    <>
      <Navbar />
      <HeroArticle />
      {articles && <NewestArticle data={articles}/>}
      <Footer />
    </>
  );
}
