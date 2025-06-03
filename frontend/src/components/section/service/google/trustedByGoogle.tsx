"use client";

import { ServiceGoogleTrustedBies } from "@/types/json/service_google_trustedBies";
import Image from "next/image";

type Props = {
  data: ServiceGoogleTrustedBies[]; // or Record<string, any>[]
};

export default function TrustedByGoogle({ data }: Props) {
  return (
    <section className="py-0 md:py-8 bg-white">
      <div className="overflow-hidden bg-white py-10">
        <p className="text-center text-3xl md:text-6xl font-semibold">
          <span className="text-orange-500 font-bold">Trusted</span> By
        </p>

        <div className="relative mt-8 overflow-hidden">
          <div className="animate-marquee flex gap-10 whitespace-nowrap justify-center">
            {/* Repeat the list multiple times */}
            {Array.from({ length: 4 }).flatMap((_, repeatIndex) =>
              data.map((item, index) => (
                <div key={`${repeatIndex}-${index}`} className="w-48 h-32 md:w-56 md:h-40 relative flex-shrink-0">
                  <Image
                    src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}`}
                    alt={item.image.name}
                    fill
                    sizes="(max-width: 768px) 12rem, 14rem" // Matches w-48 (12rem) and md:w-56 (14rem)
                    style={{ objectFit: "contain" }}
                  />
                </div>
              ))
            )}
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
