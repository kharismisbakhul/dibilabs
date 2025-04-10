"use client";

import Image from "next/image";
import { motion } from "framer-motion";
import { ArrowRight } from "lucide-react";

export default function DetailCore() {
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
          src="/assets/service/sosmed/left_hand.svg"
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
          src="/assets/service/sosmed/right_hand.svg"
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
            Optimize, Build Authority, <br /> and{" "}
            <span className="whitespace-nowrap">Rank Higher</span>
          </h2>
          <p className="mt-2">
            We optimize content, structure, and technical elements for search <br />
            engines while strengthening brand credibility through high-quality <br />
            backlinks, digital PR, and strategic partnerships. The result? Higher <br />
            rankings, increased visibility, and lasting impact.
          </p>
          <Image
            src="/assets/service/sosmed/bubble1.svg"
            alt="bubbles"
            width={100}
            height={100}
            className="absolute right-4 top-4"
          />
        </div>

        {/* Card 2 */}
        <div className="bg-[#0057A0] rounded-xl p-8 text-white relative">
          <h2 className="text-4xl font-bold leading-tight pt-10">
            Performance That <br /> Powers Growth
          </h2>
          <p className="mt-2">
            Speed, structure, and seamless navigation matter. Our technical <br />
            SEO experts fine-tune your website’s backend to ensure faster <br />
            load times, flawless indexing, and improved search rankings.
          </p>
          <Image
            src="/assets/service/sosmed/bubble2.svg"
            alt="bubbles"
            width={100}
            height={100}
            className="absolute right-4 top-4"
          />
        </div>

        {/* Card 3 */}
        <div className="bg-white rounded-xl p-8 text-[#1C1C1C] relative">
          <h2 className="text-4xl font-bold text-[#F26522] pt-10">Own Your Brand</h2>
          <p className="mt-2 text-[#0057A0]">
            When people search for you, make sure they find you first. <br />
            Through strategic keyword dominance and brand authority, we <br />
            position your business as the #1 choice in your industry.
          </p>
          <Image
            src="/assets/service/sosmed/bubble3.svg"
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
