import Footer from "../core/footer";
import Navbar from "../core/navbar";
import Brand_marketing from "./service/brand_marketing";
import Data_decision from "./service/data_decision";
import Hero_service from "./service/hero_service";
import Service_stack from "./service/service_stack";

import { ServiceLists } from "@/types/json/service_lists";
import { ServiceCards } from "@/types/json/service_cards";

interface ServicepageProps {
  lists: ServiceLists[] | null;
  cards: ServiceCards[] | null;
}

export default function Service({lists, cards} : ServicepageProps) {
  return (
    <>
      <Navbar />
      <Hero_service/>
      <Brand_marketing/>
      {lists && <Service_stack data={lists}/>}
      {cards && <Data_decision data={cards}/>}
      <Footer />
    </>
  );
}
