import Footer from "../core/footer";
import Navbar from "../core/navbar";
import HeroArticle from "./article/heroArticle";
import NewestArticle from "./article/newestArticle";

export default function Article() {
  return (
    <>
      <Navbar />
      <HeroArticle/>
      <NewestArticle/>
      <Footer />
    </>
  );
}
