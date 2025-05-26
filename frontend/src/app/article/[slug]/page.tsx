// app/article/[slug]/page.tsx
import ArticleDetail from "@/components/section/articleDetail";
import { Metadata } from "next";
import { getArticleBySlug } from "@/lib/article";

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
  const resolved = await params;
  const article = await getArticleBySlug(resolved.slug);
  return <ArticleDetail slug={article?.slug} />;
}
