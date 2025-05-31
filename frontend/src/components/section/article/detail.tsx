// pages/article/[slug].tsx
"use client";

import Link from "next/link";
import { useEffect } from "react";
// import { useRouter } from 'next/router';
// import { Articles } from "@/types/json/articles";
// import { FaFacebookF, FaShareAlt } from "react-icons/fa";
import ShareSection from "./shareSection";
import Image from "next/image";
import { Articles } from "@/types/json/articles";
import { format } from 'date-fns';

import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import rehypeSanitize from "rehype-sanitize";
import rehypeHighlight from "rehype-highlight";
import "highlight.js/styles/github.css"; // or another style

const formatDate = (dateString: string) => {
  return format(new Date(dateString), 'dd MMMM yyyy');
};

interface ArticleReadProps {
  articles: Articles;
  data: Articles[];
}

export default function ArticleRead( { articles, data }: ArticleReadProps) {
  const allArticles = data;
  const sorted = allArticles.sort(
    (a, b) => new Date(b.publishedAt).getTime() - new Date(a.publishedAt).getTime()
  );
  const sortedByDateDesc = sorted.slice(0, 5);
  const sameCategories = sortedByDateDesc.filter(article => article.category === articles.category);
  const sameCategoriesArtikel = sameCategories.slice(0, 5);

  useEffect(() => {
    const updateViewCount = async () => {
      try {
        const res = await fetch("/api/articles/views", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ slug: articles.slug }),
        });

        if (!res.ok) {
          throw new Error('Failed to fetch');
        }
        const json = await res.json();
        articles.view = json.counted;
        
      } catch (error) {
        console.error("Failed to update view count", error);
      }
    };

    updateViewCount();
  }, [articles.slug]);

  return (
    <div className="max-w-7xl mx-auto px-4 py-8 pt-36">
      {/* Breadcrumb */}
      <nav className="text-sm mb-4 text-gray-500">
        <Link href="/article">
          <span>List Article</span>
        </Link>{" "}
        &gt;{" "}
        <span className="text-bold">
          {articles.title}
        </span>
        {/* <span className="text-black font-medium">{slug}</span> */}
      </nav>

      {/* Main Layout */}
      <div className="grid grid-cols-1 md:grid-cols-12 gap-8">
        {/* Left Content */}
        <div className="md:col-span-9">
          {/* Meta */}
          <div className="flex items-center gap-4 text-sm text-gray-500 mb-2">
            <span>👤 {articles.author.username}</span>
            <span>📅 {formatDate(articles.publishedAt)}</span>
            <span>👁️ {articles.view}</span>
          </div>
            <span className="bg-orange-400 text-white text-xs px-8 py-1 rounded">
              {articles.category}
            </span>
            <br />
            <br />

          {/* Header Image */}
          <div className="relative w-full h-80 mb-4 rounded-lg overflow-hidden">
            <Image
              src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${articles.thumbnail.url}`}
              alt={articles.thumbnail.name}
              layout="fill"
              objectFit="cover"
              className="rounded-lg"
              priority
            />
          </div>

          {/* Title */}
          <h1 className="text-2xl md:text-3xl font-bold mb-4">
            {articles.title}
          </h1>

          {/* Content */}
          <article className="prose prose-lg max-w-none">
            <ReactMarkdown
              remarkPlugins={[remarkGfm]}
              rehypePlugins={[rehypeSanitize, rehypeHighlight]}
            >
              {articles.content}
            </ReactMarkdown>
          </article>
        </div>

        {/* Right Sidebar */}
        <div className="md:col-span-3 space-y-8">
          {/* Artikel Terbaru */}
          <div>
            <h2 className="text-3xl font-bold p-4">
              Artikel <span className="text-orange-500">Terbaru</span>
            </h2>
            <div className="space-y-4">
              {sortedByDateDesc.map((item, index) => (
                <div
                  key={index}
                  className="border-b p-4 hover:shadow-xl transform hover:scale-105"
                >
                  <Link href={`/article/${item.slug}`}>
                    <span
                      className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 bg-orange-500 text-white`}
                    >
                      {item.category}
                    </span>
                    <h3 className="text-sm font-semibold leading-snug">
                      {item.title}
                    </h3>
                    <p className="text-xs text-gray-600 mt-1">{item.short_desc}</p>
                    <p className="text-xs text-gray-400 mt-2">
                      <span>
                        👤 {item.author.username} | 📅 {formatDate(articles.publishedAt)}
                      </span>
                    </p>
                  </Link>
                </div>
              ))}
            </div>
          </div>

          {/* Artikel Terkait */}
          <div>
            <h2 className="text-3xl font-bold p-4">
              Artikel <span className="text-orange-500">Terkait</span>
            </h2>
            <div className="space-y-4">
              {sameCategoriesArtikel.map((item, index) => (
                <div
                  key={index}
                  className="border-b p-4 hover:shadow-xl transform hover:scale-105"
                >
                  <Link href={`/article/${item.slug}`}>
                    <span
                      className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 bg-orange-500 text-white`}
                    >
                      {item.category}
                    </span>
                    <h3 className="text-sm font-semibold leading-snug">
                      {item.title}
                    </h3>
                    <p className="text-xs text-gray-600 mt-1">{item.short_desc}</p>
                    <p className="text-xs text-gray-400 mt-2">
                      <span>
                        👤 {item.author.username} | 📅 {formatDate(articles.publishedAt)}
                      </span>
                    </p>
                  </Link>
                </div>
              ))}
            </div>
          </div>

          <ShareSection />
        </div>
      </div>
    </div>
  );
}
