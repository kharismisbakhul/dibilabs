import Footer from "../core/footer";
import Navbar from "../core/navbar";

import { Articles } from "@/types/json/articles";
import ArticleRead from "./article/detail";

interface ArticleDetailProps {
  articles: Articles;
  allArticles: Articles[];
}

export default function ArticleDetail({ articles, allArticles }: ArticleDetailProps) {
  return (
    <>
      <Navbar />
      {articles && <ArticleRead articles={articles} data={allArticles} />}
      <Footer />
    </>
  );
}
