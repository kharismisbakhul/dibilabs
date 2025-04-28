"use client";

import Image from "next/image";
import { motion } from "framer-motion";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function DetailCoreGoogle({ data }: Props) {
  return (
    <div className="relative bg-[#1C1C1C] px-4 md:px-20 py-16">
      {/* Hands Animation */}
      <motion.div
        initial={{ y: -10 }}
        animate={{ y: [0, -10, 0] }}
        transition={{ duration: 2, repeat: Infinity }}
        className="absolute -top-8 left-[30%]"
      >
        <Image
          src="/assets/service/google/left_hand.svg"
          alt="Hands Left"
          width={100}
          height={50}
        />
      </motion.div>
      <motion.div
        initial={{ y: -10 }}
        animate={{ y: [0, -10, 0] }}
        transition={{ duration: 2, repeat: Infinity }}
        className="absolute -top-8 right-[30%]"
      >
        <Image
          src="/assets/service/google/right_hand.svg"
          alt="Hands Right"
          width={100}
          height={50}
        />
      </motion.div>

      {/* Section Boxes */}
      <div className="flex flex-col gap-6">
        {data.map((core, idx) => (
          <div
            key={idx}
            className={`${core.background_color} rounded-xl p-8 ${core.text_color} relative`}
          >
            <h2 className="text-4xl font-bold leading-tight pt-10">
              {core.title}
            </h2>
            <p className="mt-2">{core.description}</p>
            <Image
              src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${core.background_bubble.url}`}
              alt={core.background_bubble.name}
              width={100}
              height={100}
              className="absolute right-4 top-4"
            />
          </div>
        ))}
      </div>

      {/* CTA Section */}
      <div className="mt-12 text-white">
        <h2 className="text-5xl font-bold leading-snug">
          Ready to Elevate Your <br /> Business to the Next Level?
        </h2>
        <div className="flex justify-end mt-6">
          <button className="bg-[#F26522] hover:bg-orange-600 text-white font-semibold px-6 py-3 rounded-xl flex items-center gap-2 transition duration-300">
            Idea Consultation Corner
            <span className="text-lg">→</span>
          </button>
        </div>
      </div>
    </div>
  );
}
