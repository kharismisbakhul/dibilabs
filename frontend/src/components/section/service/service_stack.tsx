import React from "react";
import Image from "next/image";

type Props = {
  data: any[]; // or Record<string, any>[]
};

const backgroundImage = [
  {
    image: "/assets/service/cookies.svg",
    imageStyle: "absolute right-6 -bottom-40 w-72 z-40",
  },
  {
    image: "/assets/service/stars.svg",
    imageStyle: "absolute right-[350px] bottom-2 w-32 z-40",
  }
];

export default function Service_stack({ data }: Props) {
  return (
    <>
      <div className="w-full overflow-hidden">
        {data.map((item, idx) => (
          <div
            key={idx}
            className={`relative w-full py-20 px-6 md:px-20 ${item.background_color} ${item.text_color}`}
          >
            <h2 className="text-2xl md:text-3xl font-bold z-10 relative">
              {item.title}
            </h2>
            <div className="mt-4 z-10 relative inline-flex items-center">
              <a
                href="#"
                className={`px-4 py-2 rounded-full font-semibold text-sm ${item.button_color}`}
              >
                <span className={`ml-2 font-bold ${item.button_text_color}`}>
                Learn more
                </span>
                <span className={`ml-2 font-bold ${item.arrow_color}`}>
                  →
                </span>
              </a>
            </div>
            {idx >= 1 && idx <= 2 && (
              <Image
                src={backgroundImage[idx-1].image}
                alt="Decorative"
                width={200}
                height={200}
                className={`${backgroundImage[idx-1].imageStyle}`}
              />
            )}
          </div>
        ))}
      </div>
      <div className="relative mt-[100px]">
        {/* Top white pattern */}
        <div className="w-full absolute -bottom-6 left-0">
          <Image
            src="/assets/service/pattern_top.svg" // replace with your image path
            alt="Top Divider"
            width={400}
            height={100}
            className="w-full object-cover"
          />
        </div>

        {/* Bottom orange pattern */}
        <div className="w-full absolute -bottom-[140px] left-0">
          <Image
            src="/assets/service/pattern_bottom.svg" // replace with your image path
            alt="Bottom Divider"
            width={400}
            height={100}
            className="w-full object-cover"
          />
        </div>
      </div>
    </>
  );
}
