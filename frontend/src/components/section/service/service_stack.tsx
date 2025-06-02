import React from "react";
import Image from "next/image";
import { ServiceLists } from "@/types/json/service_lists";
import Link from "next/link";

type Props = {
  data: ServiceLists[]; // or Record<string, any>[]
};

const backgroundImage = [
  {
    image: "/assets/service/cookies.svg",
    imageStyle: "absolute right-0 md:right-6 -bottom-[100px] md:-bottom-[250px] w-[150px] md:w-[450px] z-40",
  },
  {
    image: "/assets/service/stars.svg",
    imageStyle: "absolute right-[100px] md:right-[500px] -bottom-[20px] md:-bottom-[50px] w-[70px] md:w-[250px] z-40",
  }
];

export default function Service_stack({ data }: Props) {
  return (
    <>
      <div className="w-full overflow-hidden">
        {data.map((item, idx) => (
          <div
            key={idx}
            className={`relative w-full py-10 md:py-20 px-6 md:px-20 ${item.background_color} ${item.text_color}`}
          >
            <p className="text-xl md:text-7xl font-bold z-10 relative">
              {item.title}
            </p>
            <div className="mt-4 z-10 relative inline-flex items-center">
              <Link
                href="#"
                className={`px-10 py-2 rounded-full font-semibold text-base md:text-2xl ${item.button_color}`}
                scroll={false}
              >
                <span className={`ml-2 font-bold ${item.button_text_color}`}>
                Learn more
                </span>
                <span className={`ml-2 font-bold ${item.arrow_color}`}>
                  →
                </span>
              </Link>
            </div>
            {idx >= 1 && idx <= 2 && (
              <Image
                src={backgroundImage[idx-1].image}
                alt="Decorative"
                width={400}
                height={400}
                className={`${backgroundImage[idx-1].imageStyle}`}
              />
            )}
          </div>
        ))}
      </div>
      <br /><br />
      <div className="relative mt-[-600px] -bottom-[370px] h-[400px] overflow-hidden bg-transparent">
          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 rotate-[-3deg] w-full">
            <div className="flex animate-marquee w-max">
              {Array(2).fill(0).map((_, i) => (
                <div key={i} className="flex text-white text-2xl md:text-4xl font-bold bg-[#231F20] px-4 py-6">
                  {Array(30).fill(" ✦ DIBILABS ").map((text, index) => (
                    <span key={index} className="px-1 whitespace-nowrap">{text}</span>
                  ))}
                </div>
              ))}
            </div>
          </div>
        </div>

        <div className="relative mt-[-250px] -bottom-[350px] h-[400px] overflow-hidden bg-transparent">
          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 rotate-[-3deg] w-full">
            <div className="flex animate-marqueeR w-max">
              {Array(2).fill(0).map((_, i) => (
                <div key={i} className="flex text-white text-2xl md:text-4xl font-bold bg-[#F16923] px-4 py-6">
                  {Array(30).fill(" ✦ DIBILABS ").map((text, index) => (
                    <span key={index} className="px-1 whitespace-nowrap">{text}</span>
                  ))}
                </div>
              ))}
            </div>
          </div>
        </div>

      
    </>
  );
}
