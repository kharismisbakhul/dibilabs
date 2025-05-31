// app/article/[slug]/page.tsx
import ArticleDetail from "@/components/section/articleDetail";
import { Metadata } from "next";
import { getArticleBySlug } from "@/lib/article";
import { getArticlesData, updateViewCount } from "@/lib/strapi_articles";

type Props = {
  params: Promise<{ slug: string }>;
};

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const resolved = await params;
  const article = await getArticleBySlug(resolved.slug);
  return {
    title: article?.title || "Article",
    description: article?.short_desc || "Read this article.",
  };
}

export default async function ArticlePage({ params }: Props) {
  const { slug } = await params;
  
  await updateViewCount(slug);

  const article = await getArticleBySlug(slug);
  const allArticles = await getArticlesData();

  // ✅ Full SSR-style gate: return nothing if not ready
  if (!article || !allArticles) {
    // optional: return a 404 page, redirect, or fallback
    return <div className="text-center p-10">Article not found.</div>;
  }

  return <ArticleDetail articles={article} allArticles={allArticles} />;
}
