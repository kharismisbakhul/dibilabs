import React from "react";
import Image from "next/image";

const services = [
  {
    title: "iOS and Android App Development",
    bgColor: "bg-[#f26322]",
    textColor: "text-black",
    buttonColor: "bg-white text-black",
    arrowColor: "text-[#f26322]",
  },
  {
    title: "Website Development",
    bgColor: "bg-white",
    textColor: "text-[#004785]",
    buttonColor: "bg-[#f26322] text-white",
    arrowColor: "text-white",
    image: "/assets/service/cookies.svg",
    imageStyle: "absolute right-6 -bottom-40 w-72 z-40",
  },
  {
    title: "ERP & LMS Solutions",
    bgColor: "bg-black",
    textColor: "text-white",
    buttonColor: "bg-[#004785] text-white",
    arrowColor: "text-white",
    image: "/assets/service/stars.svg",
    imageStyle: "absolute right-[350px] bottom-2 w-32 z-40",
  },
  {
    title: "iOS and Android App Development",
    bgColor: "bg-[#004785]",
    textColor: "text-[#f26322]",
    buttonColor: "bg-black text-white",
    arrowColor: "text-[#f26322]",
  },
];

export default function Service_stack() {
  return (
    <>
      <div className="w-full overflow-hidden">
        {services.map((service, idx) => (
          <div
            key={idx}
            className={`relative w-full py-20 px-6 md:px-20 ${service.bgColor} ${service.textColor}`}
          >
            <h2 className="text-2xl md:text-3xl font-bold z-10 relative">
              {service.title}
            </h2>
            <div className="mt-4 z-10 relative inline-flex items-center">
              <a
                href="#"
                className={`px-4 py-2 rounded-full font-semibold text-sm ${service.buttonColor}`}
              >
                Learn more
                <span className={`ml-2 font-bold ${service.arrowColor}`}>
                  →
                </span>
              </a>
            </div>
            {service.image && (
              <Image
                src={service.image}
                alt="Decorative"
                width={200}
                height={200}
                className={`${service.imageStyle}`}
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
