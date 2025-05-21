import ArticleDetail from "@/components/section/articleDetail";

interface ArticleParams {
  slug: string;
}

interface ArticlePageProps {
  params: Promise<ArticleParams>;
}

export default async function ArticlePage({ params }: ArticlePageProps) {
  const { slug } = await params;

  return <ArticleDetail slug={slug} />;
}
