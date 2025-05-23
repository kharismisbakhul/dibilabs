import ArticleDetail from "@/components/section/articleDetail";
import { Metadata } from "next";
import { getArticleBySlug } from "@/lib/article";

type Props = {
  params: { slug: string };
};

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const article = await getArticleBySlug(params.slug);

  return {
    title: `${article?.title}`,
    description: article?.short_desc,
  };
}

export default async function ArticlePage({ params }: Props) {
  const article = await getArticleBySlug(params.slug);

  return <ArticleDetail slug={article?.slug} />;
}