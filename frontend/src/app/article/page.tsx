import Article from "@/components/section/article";
import { getArticlesData } from "@/lib/strapi_articles";

export const metadata = {
  title: "Article",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [articles] = await Promise.all([
    getArticlesData()
  ]);

  return (
    <>
      <Article articles={articles}/>
    </>
  );
}
