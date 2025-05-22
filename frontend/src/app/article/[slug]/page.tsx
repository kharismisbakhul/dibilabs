import ArticleDetail from "@/components/section/articleDetail";
import { Metadata } from "next";
import { getArticleBySlug } from "@/lib/article";

type Props = {
  params: { slug: string };
};

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const param = await params;
  const article = await getArticleBySlug(param.slug);

  return {
    title: `${article?.title}`,
    description: article?.short_desc,
  };
}

export default async function ArticlePage({ params }: Props) {
  const param = await params;
  const article = await getArticleBySlug(param.slug);

  return <ArticleDetail slug={article?.slug} />;
}