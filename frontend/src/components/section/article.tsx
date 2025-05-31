import Footer from "../core/footer";
import Navbar from "../core/navbar";

import { Articles } from "@/types/json/articles";
import ListArticle from "./article/listArticle";
import BiteSizePage from "./article/biteSize";
import CaseStudiesPage from "./article/caseStudies";

interface ArticlespageProps {
  articles: Articles[] | null;
}

export default function Article({articles} : ArticlespageProps) {
  return (
    <>
      <Navbar />
      {articles && <ListArticle data={articles}/>}
      {articles && <BiteSizePage data={articles}/>}
      {articles && <CaseStudiesPage data={articles}/>}
      <Footer />
    </>
  );
}
