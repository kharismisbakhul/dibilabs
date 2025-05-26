// /app/blog/[slug]/page.tsx
import ArticleDetail from "@/components/section/articleDetail";
import { getArticleBySlug } from "@/lib/article";
import { Metadata } from "next";

interface Props {
  params: { slug: string };
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const article = await getArticleBySlug(params.slug);

  return {
    title: article?.title || "Article Not Found",
    description: article?.short_desc || "No description available",
  };
}

export default async function ArticlePage({ params }: Props) {
  const article = await getArticleBySlug(params.slug);

  if (!article) {
    return <div>Article not found</div>;
  }

  return <ArticleDetail slug={article.slug} />;
}
