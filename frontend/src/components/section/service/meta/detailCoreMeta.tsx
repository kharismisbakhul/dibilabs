"use client";

import Image from "next/image";
import { motion } from "framer-motion";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function DetailCoreMeta({ data }: Props) {
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
          src="/assets/service/meta/left_hand.svg"
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
          src="/assets/service/meta/right_hand.svg"
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
            See Everything,
            <br />
            Optimize Smarter
          </h2>
          <p className="mt-2">
            No more guessing games because our real-time dashboard is here{" "}
            <br />
            to put you in control. Track performance, spot opportunities, and{" "}
            <br />
            make data-backed decisions with full visibility.
          </p>
          <Image
            src="/assets/service/meta/bubble1.svg"
            alt="bubbles"
            width={100}
            height={100}
            className="absolute right-4 top-4"
          />
        </div>

        {/* Card 2 */}
        <div className="bg-[#0057A0] rounded-xl p-8 text-white relative">
          <h2 className="text-4xl font-bold leading-tight pt-10">
            Sync Up, Numbers Up
          </h2>
          <p className="mt-2">
            Great marketing isn’t a solo act. Dibilabs are ready to embed <br />
            ourselves into your team, collaborating closely to refine
            strategies, <br />
            solve challenges, and scale faster.
          </p>
          <Image
            src="/assets/service/meta/bubble2.svg"
            alt="bubbles"
            width={100}
            height={100}
            className="absolute right-4 top-4"
          />
        </div>

        {/* Card 3 */}
        <div className="bg-white rounded-xl p-8 text-[#1C1C1C] relative">
          <h2 className="text-4xl font-bold text-[#F26522] pt-10">
            No Gimmicks. Just Data, <br />
            Strategy, and Results.
          </h2>
          <p className="mt-2 text-[#0057A0]">
            At Dibilabs, marketing is more than just execution— <br />
            it’s a precise science. Every strategy we craft is built on data,{" "}
            <br />
            experimentation, and continuous learning, ensuring each <br />
            decision drives measurable impact.
          </p>
          <Image
            src="/assets/service/meta/bubble3.svg"
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
