"use client";

import Image from "next/image";
import { motion } from "framer-motion";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function DetailCoreWebdev({ data }: Props) {
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
          src="/assets/service/webdev/left_hand.svg"
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
          src="/assets/service/webdev/right_hand.svg"
          alt="Hands Right"
          width={100}
          height={50}
        />
      </motion.div>

      {/* Section Boxes */}
      <div className="flex flex-col gap-6">
        {/* Card 1 */}
        <div className="bg-[#F26522] rounded-xl p-8 text-white relative">
          <h2 className="text-4xl font-bold leading-tight pt-10">
            ASAP
          </h2>
          <p className="mt-2">
            We design, develop, and optimize websites in just seven days <br />
            without compromising quality. With a streamlined process and <br />
            expert execution, your brand gets a high-performing, <br />
            fully functional site.
          </p>
          <Image
            src="/assets/service/webdev/bubble1.svg"
            alt="bubbles"
            width={100}
            height={100}
            className="absolute right-4 top-4"
          />
        </div>

        {/* Card 2 */}
        <div className="bg-[#0057A0] rounded-xl p-8 text-white relative">
          <h2 className="text-4xl font-bold leading-tight pt-10">
            Built for Speed, <br />
            Designed for Marketing
          </h2>
          <p className="mt-2">
            Websites are developed with seamless integration of tracking, <br />
            automation, and marketing tools to ensure your campaigns run <br />
            efficiently from day one.
          </p>
          <Image
            src="/assets/service/webdev/bubble2.svg"
            alt="bubbles"
            width={100}
            height={100}
            className="absolute right-4 top-4"
          />
        </div>

        {/* Card 3 */}
        <div className="bg-white rounded-xl p-8 text-[#1C1C1C] relative">
          <h2 className="text-4xl font-bold text-[#F26522] pt-10">
            Aesthetics Meet Efficiency
          </h2>
          <p className="mt-2 text-[#0057A0]">
            Beautiful websites shouldn’t compromise functionality. <br />
            Our designs are sleek, engaging, and built to deliver <br />a
            seamless user experience with fast performance.
          </p>
          <Image
            src="/assets/service/webdev/bubble3.svg"
            alt="bubbles"
            width={100}
            height={100}
            className="absolute right-4 top-4"
          />
        </div>
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
