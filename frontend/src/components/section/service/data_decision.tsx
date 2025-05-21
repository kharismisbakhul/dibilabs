import React from "react";
import Image from "next/image";
import { ServiceCards } from "@/types/json/service_cards";
import Link from "next/link";

type Props = {
  data: ServiceCards[]; // or Record<string, any>[]
};

export default function Data_decision({ data }: Props) {
  return (
    <>
      <div className="bg-white py-12 text-left mt-[250px]">
        <div className="flex my-6 relative mx-[50px]">
            <div className="justify-left">
                {/* Top Titles */}
                <h2 className="text-[#f26322] text-xl md:text-4xl font-normal mb-2">
                Strategic Business Experimentation
                </h2>
                <h1 className="text-[#004785] text-3xl md:text-7xl font-extrabold leading-tight">
                Rely on Data
                <br />
                Based Business
                <br />
                Decision Making
                </h1>
            </div>
            <div className="absolute right-0 animate-pulse-slow w-[150px] md:w-[300px]">
                <Image src="/assets/service/eyes.svg" alt="Eyes" width={250} height={250} />
            </div>
        </div>

        {/* Eye Illustration */}
        {/* <div className="flex justify-center my-6">
          <Image src="/image.png" alt="Eyes" width={90} height={90} />
        </div> */}

        {/* Cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4 mt-6 mx-[30px] md:mx-[50px]">
          {data.map((item, idx) => (
            <div
              key={idx}
              className={`flex flex-col justify-between rounded-none p-6 pt-[150px] md:pt-[250px] min-h-[100px] md:min-h-[280px] ${item.background_color}`}
            >
              <div>
                <h3 className={`text-xl md:text-2xl font-semibold mb-4 ${item.text_color}`}>
                  {item.title}
                </h3>
              </div>
              <div className="mt-auto">
                <Link
                  href="#"
                  className={`inline-flex items-center gap-1 text-base md:text-xl font-semibold px-4 md:px-8 py-2 rounded-full ${item.button_color}`}
                >
                  <span className={`${item.button_text_color}`}>Learn more</span> <span className={`${item.arrow_color}`}>→</span>
                </Link>
              </div>
              
            </div>
          ))}
        </div>
      </div>
    </>
  );
}
