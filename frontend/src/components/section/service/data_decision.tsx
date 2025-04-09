import React from "react";
import Image from "next/image";

const services = [
  {
    title: "UX & Market Research",
    color: "bg-[#f26322]",
    textColor: "text-black",
    buttonColor: "bg-white text-black",
    arrowColor: "text-[#f26322]",
    link: "#",
  },
  {
    title: "Data Management & Analysis",
    color: "bg-[#004785]",
    textColor: "text-[#f26322]",
    buttonColor: "bg-black text-white",
    arrowColor: "text-[#f26322]",
    link: "#",
  },
  {
    title: "Digital Marketing Consultation",
    color: "bg-black",
    textColor: "text-white",
    buttonColor: "bg-[#004785] text-[#f26322]",
    arrowColor: "text-white",
    link: "#",
  },
  {
    title: "Information and Technology Consultation",
    color: "bg-[#d9d9d9]",
    textColor: "text-[#004785]",
    buttonColor: "bg-[#f26322] text-white",
    arrowColor: "text-white",
    link: "#",
  },
];

export default function Data_decision() {
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
          {services.map((service, idx) => (
            <div
              key={idx}
              className={`rounded-none p-6 pt-[250px] min-h-[180px] ${service.color}`}
            >
              <h3 className={`text-lg font-semibold mb-4 ${service.textColor}`}>
                {service.title}
              </h3>
              <a
                href={service.link}
                className={`inline-flex items-center gap-1 text-sm font-semibold px-4 py-2 rounded-full ${service.buttonColor}`}
              >
                Learn more <span className={`${service.arrowColor}`}>→</span>
              </a>
            </div>
          ))}
        </div>
      </div>
    </>
  );
}
