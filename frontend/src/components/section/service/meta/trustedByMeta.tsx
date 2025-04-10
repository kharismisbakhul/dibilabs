"use client"

import Image from "next/image";

const brands = [
  "/assets/service/meta/trustedby1.png",
  "/assets/service/meta/trustedby2.png",
  "/assets/service/meta/trustedby3.png",
  "/assets/service/meta/trustedby4.png",
  "/assets/service/meta/trustedby5.png",
];

export default function TrustedByMeta() {
  return (
    <section className="py-8 bg-white">
      <div className="overflow-hidden bg-white py-10">
        <h2 className="text-center text-3xl font-semibold">
          <span className="text-orange-500 font-bold">Trusted</span> By
        </h2>

        <div className="relative mt-8 overflow-hidden">
          <div className="flex gap-10 whitespace-nowrap animate-marquee">
            {brands.concat(brands).map((src, index) => (
              <div key={index} className="w-36 h-20 relative flex-shrink-0">
                <Image
                  src={src}
                  alt={`brand-${index}`}
                  fill
                  style={{ objectFit: "contain" }}
                />
              </div>
            ))}
          </div>
        </div>

        {/* Inline keyframes for marquee animation */}
        <style jsx>{`
          @keyframes marquee {
            0% {
              transform: translateX(0%);
            }
            100% {
              transform: translateX(-50%);
            }
          }

          .animate-marquee {
            animation: marquee 20s linear infinite;
          }
        `}</style>
      </div>
    </section>
  );
}
