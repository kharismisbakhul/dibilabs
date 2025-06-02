"use client";

import Image from "next/image";
import { motion } from "framer-motion";
import { ServiceMetaCores } from "@/types/json/service_meta_cores";

type Props = {
  data: ServiceMetaCores[]; // or Record<string, any>[]
};

export default function DetailCoreMeta({ data }: Props) {
  return (
    <div className="relative bg-[#1C1C1C] px-4 md:px-20 py-16">
      {/* Hands Animation */}
      <motion.div
        initial={{ y: -10 }}
        animate={{ y: [0, -10, 0] }}
        transition={{ duration: 2, repeat: Infinity }}
        className="absolute -top-9 md:-top-20 left-[20%] sm:left-[25%] md:left-[30%]"
      >
        <Image
          src="/assets/service/meta/left_hand.svg"
          alt="Hands Left"
          width={0}
          height={0}
          className="w-[80px] sm:w-[100px] md:w-[150px] h-[80px] sm:h-[100px] md:h-[150px]"
        />
      </motion.div>
      <motion.div
        initial={{ y: -10 }}
        animate={{ y: [0, -10, 0] }}
        transition={{ duration: 2, repeat: Infinity }}
        className="absolute -top-9 md:-top-20 right-[20%] sm:right-[25%] md:right-[30%]"
      >
        <Image
          src="/assets/service/meta/right_hand.svg"
          alt="Hands Right"
          width={0}
          height={0}
          className="w-[80px] sm:w-[100px] md:w-[150px] h-[80px] sm:h-[100px] md:h-[150px]"
        />
      </motion.div>

      {/* Section Boxes */}
      <div className="flex flex-col gap-6">
        {data.map((core, idx) => (
          <div
            key={idx}
            className={`${core.background_color} rounded-xl px-8 py-10 md:px-10 md:py-24 ${core.text_color} relative`}
          >
            <p className="text-2xl md:text-5xl font-bold leading-tight pt-10">
              {core.title}
            </p>
            <p className="mt-2 text-sm md:text-xl">{core.description}</p>
            <div className="absolute w-[60px] h-[60px] md:w-[70px] md:h-[70px] right-0 md:right-4 top-4">
              <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${core.background_bubble.url}`}
                alt={core.background_bubble.name}
                fill
                className="object-contain" // Maintain aspect ratio
              />
            </div>
          </div>
        ))}
      </div>

      {/* CTA Section */}
      <div className="mt-12 text-white px-2 md:px-0">
        <h2 className="text-3xl md:text-7xl font-bold leading-snug">
          Ready to Elevate Your <br /> Business to the Next Level?
        </h2>
        <div className="flex justify-end mt-6">
          <button className="text-sm md:text-xl bg-[#F26522] hover:bg-orange-600 text-white font-semibold px-10 py-3 rounded-xl flex items-center gap-2 transition duration-300">
            Idea Consultation Corner
            <span className="text-sm md:text-lg">→</span>
          </button>
        </div>
      </div>
    </div>
  );
}
