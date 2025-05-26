// app/article/[slug]/page.tsx
import ArticleDetail from "@/components/section/articleDetail";
import { Metadata } from "next";
import { getArticleBySlug } from "@/lib/article";

export async function generateMetadata({
  params,
}: {
  params: { slug: string };
}): Promise<Metadata> {
  const article = await getArticleBySlug(params.slug);

  return {
    title: article?.title || "Article Not Found",
    description: article?.short_desc || "No description available",
  };
}

export default async function ArticlePage({
  params,
}: {
  params: { slug: string };
}) {
  const article = await getArticleBySlug(params.slug);

  if (!article) {
    return <div>Article not found</div>;
  }

  return <ArticleDetail slug={article.slug} />;
}
