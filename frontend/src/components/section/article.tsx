'use client';

import Footer from "../core/footer";
import Navbar from "../core/navbar";
// import HeroArticle from "./article/heroArticle";
// import NewestArticle from "./article/newestArticle";

import { useEffect, useState } from "react";
import { Articles } from "@/types/json/articles";
import ListArticle from "./article/listArticle";
import BiteSizePage from "./article/biteSize";
import CaseStudiesPage from "./article/caseStudies";
// import ArticleDetail from "./article/detail";

export default function Article() {
  const [articles, setArticles] = useState<Articles[] | null>(null);

  const fetchDataArticles = async () => {
    try {
      // const res = await fetch("/api/articles");
      const res = await fetch("/json/articles.json");
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
      {/* <HeroArticle /> */}
      {/* {articles && <NewestArticle data={articles}/>} */}
      {articles && <ListArticle/>}
      {articles && <BiteSizePage/>}
      {articles && <CaseStudiesPage/>}
      {/* {articles && <ArticleDetail data={articles}/>} */}
      <Footer />
    </>
  );
}
