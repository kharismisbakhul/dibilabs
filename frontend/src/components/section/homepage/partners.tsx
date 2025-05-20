import Image from "next/image";
import { motion } from 'framer-motion';
import { HomepagePartners } from "@/types/json/homepage_partners";

type Props = {
  data: HomepagePartners[]; // or Record<string, any>[]
};

export default function Partners({ data }: Props) {
  return (
    <>
      {/* Partners */}
      <section className="relative bg-white">
        <div className="pt-24 md:pt-48" />
        {/* Background half circle */}
        <div className="bg-[#1A1617] rounded-t-full pt-[5vw] pb-[4vw] px-4 md:px-10 text-white text-center relative z-10">
          {/* Animated Eyes */}
          <motion.div
            className="absolute top-[-100px] md:top-[-180px] left-[41%] md:left-[42%] lg:left-[44%] transform -translate-x-1/2 flex z-20 w-28 h-28 md:w-[200px] md:h-[200px]"
            animate={{ scale: [1, 1.05, 1], y: [0, -3, 0] }}
            transition={{ repeat: Infinity, duration: 2 }}
          >
            <div className="relative w-full h-full">
              <Image
                src="/assets/homepage/eyes.svg"
                alt="Eyes"
                fill
                className="object-contain"
              />
            </div>
          </motion.div>

          {/* Hands with precision */}
          <motion.div
            className="absolute -top-3 md:-top-10 left-[15%] md:left-[250px] z-10 w-24 h-24 md:w-[200px] md:h-[200px]"
            animate={{ y: [0, 5, 0] }}
            transition={{ repeat: Infinity, duration: 3 }}
          >
            <div className="relative w-full h-full">
              <Image
                src="/assets/homepage/left_hand.svg"
                alt="Left Hand"
                fill
                className="object-contain"
              />
            </div>
          </motion.div>

          <motion.div
            className="absolute -top-3 md:-top-10 right-[15%] md:right-[250px] z-10 w-24 h-24 md:w-[200px] md:h-[200px]"
            animate={{ y: [0, 5, 0] }}
            transition={{ repeat: Infinity, duration: 3 }}
          >
            <div className="relative w-full h-full">
              <Image
                src="/assets/homepage/right_hand.svg"
                alt="Right Hand"
                fill
                className="object-contain"
              />
            </div>
          </motion.div>

          <h2 className="text-4xl md:text-6xl lg:text-8xl font-bold text-orange-500">
            Partners
          </h2>
          <div className="relative inline-block">
            <p className="text-2xl md:text-4xl lg:text-6xl font-semibold text-[#FFD9B0]">
              Success Stories
            </p>

            {/* Left Star */}
            <div className="absolute -left-10 -bottom-0 w-5 h-5 md:-left-20 md:-bottom-15 md:w-16 md:h-16">
              <div className="relative w-full h-full">
                <Image
                  src="/assets/homepage/star.svg"
                  alt="Star"
                  fill
                  className="object-contain"
                />
              </div>
            </div>

            {/* Right Star */}
            <div className="absolute -right-4 -top-10 w-5 h-5 md:-right-12 md:-top-14 md:w-16 md:h-16">
              <div className="relative w-full h-full">
                <Image
                  src="/assets/homepage/star.svg"
                  alt="Star"
                  fill
                  className="object-contain"
                />
              </div>
            </div>
          </div>

          <p className="text-base md:text-2xl mt-6 max-w-2xl mx-auto">
            Speak No More and Browse through the Wide <br />
            Array of Digital Success We assisted
          </p>

          <div className="container mx-auto px-4 pt-[2vw]">
            {/* Logos Grid */}
            <div className="relative w-full overflow-hidden py-4">
              <div className="flex w-max animate-marqueeLeft gap-10">
                {[...data, ...data].map((item, idx) => (
                  <div
                    key={idx}
                    className="min-w-[120px] h-[80px] flex items-center justify-center p-4 bg-white rounded-xl shadow-md"
                  >
                    <div className="relative w-[120px] h-[80px]">
                      <Image
                        src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}`}
                        alt={item.image.name}
                        fill
                        sizes="(max-width: 768px) 50vw, 25vw"
                        className="object-contain"
                      />
                    </div>
                  </div>
                ))}
              </div>
            </div>

            {/* Logos Grid */}
            <div className="relative w-full overflow-hidden py-4">
              <div className="flex w-max animate-marqueeRight gap-10">
                {[...data, ...data].map((item, idx) => (
                  <div
                    key={idx}
                    className="min-w-[120px] h-[80px] flex items-center justify-center p-4 bg-white rounded-xl shadow-md"
                  >
                    <div className="relative w-[120px] h-[80px]">
                      <Image
                        src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}`}
                        alt={item.image.name}
                        fill
                        sizes="(max-width: 768px) 50vw, 25vw"
                        className="object-contain"
                      />
                    </div>
                  </div>
                ))}
              </div>
            </div>

            <p className="text-xl text-white mt-6">
              and many more... <span className="text-xl">👀</span>
            </p>
          </div>
        </div>

        {/* Decorative bubbles */}
        <div className="absolute top-4 left-4 w-32 h-32 md:w-48 md:h-48 z-0">
          <Image
            src="/assets/homepage/left_bubble.svg"
            alt="Bubbles Decoration"
            fill
            className="object-contain"
          />
        </div>
      </section>
    </>
  );
}
