"use client";

import Footer from "../core/footer";
import Navbar from "../core/navbar";

import { useEffect, useState } from "react";
import { Articles } from "@/types/json/articles";
import ArticleRead from "./article/detail";

interface ArticleDetailProps {
  slug: string;
}

export default function ArticleDetail({ slug }: ArticleDetailProps) {
  const [articles, setArticles] = useState<Articles | null>(null);
  const [allArticles, setAllArticles] = useState<Articles[]>([]);

  useEffect(() => {
    const fetchDataArticles = async () => {
      try {
        // const res = await fetch("/api/articles");
        const res = await fetch("/json/articles.json");
        if (!res.ok) {
          throw new Error("Failed to fetch articles");
        }
        const json = await res.json();
        setAllArticles(json.data);
        const found = json.data.find((a: Articles) => a.slug === slug);
        setArticles(found || null);
      } catch (error) {
        console.error("Failed to fetch articles:", error);
      }
    };

    fetchDataArticles();
  }, [slug]);

  // ✅ Log or check value when `article` changes
  //   useEffect(() => {
  //     if (articles) {
  //       console.log("Article found:", articles);
  //     } else {
  //       console.log("No matching article found.");
  //     }
  //   }, [articles]);

  return (
    <>
      <Navbar />
      {articles && <ArticleRead articles={articles} data={allArticles} />}
      <Footer />
    </>
  );
}
