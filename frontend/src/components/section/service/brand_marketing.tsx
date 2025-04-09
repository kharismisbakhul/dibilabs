import React from "react";
import Image from "next/image";

const services = [
  {
    title: "Digital Advertising",
    bgColor: "bg-black",
    textColor: "text-white",
    buttonColor: "bg-[#f26322] text-white",
    arrowColor: "text-white",
    size: "w-64 h-64",
    position: "top-[80px] left-[-20px]",
  },
  {
    title: "Social Media Handling",
    bgColor: "bg-[#004785]",
    textColor: "text-white",
    buttonColor: "bg-white text-black",
    arrowColor: "text-[#f26322]",
    size: "w-52 h-52",
    position: "top-[60px] right-[20px]",
  },
  {
    title: "Shoppertainment Hacks",
    bgColor: "bg-[#f26322]",
    textColor: "text-white",
    buttonColor: "bg-[#004785] text-white",
    arrowColor: "text-white",
    size: "w-60 h-60",
    position: "top-[220px] right-[10px]",
  },
  {
    title: "Influencer Marketing",
    bgColor: "bg-[#004785]",
    textColor: "text-white",
    buttonColor: "bg-white text-black",
    arrowColor: "text-[#f26322]",
    size: "w-72 h-72",
    position: "top-[300px] left-[-20px]",
  },
];

export default function Brand_marketing() {
    return (
        <>
        <div className="relative w-full overflow-hidden bg-white py-10 px-4 md:px-12">
      {/* Header Text */}
      <p className="text-black text-center text-sm font-medium mb-2">
        Creative, Marketing, and Communications
      </p>
      <h2 className="text-[#f26322] text-center text-4xl md:text-5xl font-extrabold leading-tight drop-shadow-md">
        <span className="block text-black -mb-2 relative z-10">Brand and</span>
        <span className="relative z-10">Marketing Services</span>
      </h2>

      {/* Bubbles */}
      <div className="relative w-full mt-8 min-h-[700px]">
        {services.map((service, idx) => (
          <div
            key={idx}
            className={`absolute ${service.size} ${service.position} ${service.bgColor} rounded-full flex flex-col items-center justify-center p-4 text-center shadow-lg`}
          >
            <h3 className={`font-bold text-lg ${service.textColor}`}>{service.title.split(" ")[0]}</h3>
            <p className={`text-base ${service.textColor}`}>{service.title.split(" ").slice(1).join(" ")}</p>
            <a
              href="#"
              className={`mt-3 inline-flex items-center px-4 py-1 rounded-full font-semibold text-sm ${service.buttonColor}`}
            >
              Learn more <span className={`ml-2 font-bold ${service.arrowColor}`}>→</span>
            </a>
          </div>
        ))}

        {/* Decorative dots or stars */}
        <Image
          src="/image.png"
          alt="Decorative Background"
          width={600}
          height={600}
          className="absolute top-0 left-0 w-full h-full object-cover opacity-60 pointer-events-none"
        />
      </div>

      {/* Bottom Section */}
      <div className="mt-10 relative">
        <Image
          src="/assets/service/office.png"
          alt="People Collaborating"
          width={600}
          height={300}
          className="relative w-full object-cover"
        />
        <div className="absolute bottom-4 left-4 text-white">
          <p className="text-sm font-medium">Digital Infrastructure Solutions</p>
          <h3 className="text-xl font-bold max-w-sm leading-snug">
            Streamline and Digitize Your Business Process
          </h3>
        </div>
      </div>
    </div>
        </>
    )
}