import Service from "@/components/section/service";
import { getServiceListsData, getServiceCardsData} from "@/lib/strapi_service";

export const metadata = {
  title: "Services",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [lists, cards] = await Promise.all([
      getServiceListsData(),
      getServiceCardsData()
    ]);

  return (
    <>
      <Service lists={lists} cards={cards}/>
    </>
  );
}
