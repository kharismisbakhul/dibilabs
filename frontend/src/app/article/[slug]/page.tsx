import ArticleDetail from "@/components/section/articleDetail";
import { Metadata } from "next";
import { getArticleBySlug } from "@/lib/article";

interface Props {
  params: Promise<{ slug: string }>;
  searchParams?: { [key: string]: string | string[] | undefined };
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const resolvedParams = await params;
  const article = await getArticleBySlug(resolvedParams.slug);

  return {
    title: `${article?.title}`,
    description: article?.short_desc,
  };
}

export default async function ArticlePage({ params }: Props) {
  const resolvedParams = await params;
  const article = await getArticleBySlug(resolvedParams.slug);

  return <ArticleDetail slug={article?.slug} />;
}