import React from "react";
import Image from "next/image";
import { ServiceCards } from "@/types/json/service_cards";

type Props = {
  data: ServiceCards[]; // or Record<string, any>[]
};

export default function Data_decision({ data }: Props) {
  return (
    <>
      <div className="bg-white px-6 py-12 md:px-12 lg:px-20 text-left mt-[250px]">
        <div className="flex my-6 relative ml-[125px] mr-[125px]">
            <div className="justify-left">
                {/* Top Titles */}
                <h2 className="text-[#f26322] text-xl md:text-2xl font-normal mb-2">
                Strategic Business Experimentation
                </h2>
                <h1 className="text-[#004785] text-4xl md:text-5xl font-extrabold leading-tight">
                Rely on Data
                <br />
                Based Business
                <br />
                Decision Making
                </h1>
            </div>
            <div className="absolute right-0">
                <Image src="/assets/service/eyes.svg" alt="Eyes" width={180} height={180} />
            </div>
        </div>

        {/* Eye Illustration */}
        {/* <div className="flex justify-center my-6">
          <Image src="/image.png" alt="Eyes" width={90} height={90} />
        </div> */}

        {/* Cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4 mt-6 max-w-7xl mx-auto">
          {data.map((item, idx) => (
            <div
              key={idx}
              className={`rounded-none p-6 pt-[250px] min-h-[180px] ${item.background_color}`}
            >
              <h3 className={`text-lg font-semibold mb-4 ${item.text_color}`}>
                {item.title}
              </h3>
              <a
                href="#"
                className={`inline-flex items-center gap-1 text-sm font-semibold px-4 py-2 rounded-full ${item.button_color}`}
              >
                <span className={`${item.button_text_color}`}>Learn more</span> <span className={`${item.arrow_color}`}>→</span>
              </a>
            </div>
          ))}
        </div>
      </div>
    </>
  );
}
