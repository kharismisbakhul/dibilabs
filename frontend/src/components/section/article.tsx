'use client';

import Footer from "../core/footer";
import Navbar from "../core/navbar";

import { useEffect, useState } from "react";
import { Articles } from "@/types/json/articles";
import ListArticle from "./article/listArticle";
import BiteSizePage from "./article/biteSize";
import CaseStudiesPage from "./article/caseStudies";

export default function Article() {
  const [articles, setArticles] = useState<Articles[] | null>(null);

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
      {articles && <ListArticle data={articles}/>}
      {articles && <BiteSizePage data={articles}/>}
      {articles && <CaseStudiesPage data={articles}/>}
      <Footer />
    </>
  );
}
