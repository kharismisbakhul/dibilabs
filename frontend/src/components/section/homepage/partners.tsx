import Image from "next/image";
import { motion } from 'framer-motion';

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function Partners({ data }: Props) {
  return (
    <>
      {/* Partners */}
      <section className="relative bg-white">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        {/* Background half circle */}
        <div className="bg-[#1A1617] rounded-t-full pt-[10vw] pb-[4vw] px-4 md:px-10 text-white text-center relative z-10">
          {/* Animated Eyes */}
          <motion.div
            className="absolute top-[-160px] left-[44%] transform -translate-x-[50%] flex z-20"
            animate={{ scale: [1, 1.05, 1], y: [0, -3, 0] }}
            transition={{ repeat: Infinity, duration: 2 }}
          >
            <Image
              src="/assets/homepage/eyes.svg"
              alt="Eyes"
              width={200}
              height={200}
            />
          </motion.div>

          {/* Hands with precision */}
          <motion.div
            className="absolute top-10 left-[250px] z-10"
            animate={{ y: [0, 5, 0] }}
            transition={{ repeat: Infinity, duration: 3 }}
          >
            <Image
              src="/assets/homepage/left_hand.svg"
              alt="Left Hand"
              width={200}
              height={200}
            />
          </motion.div>

          <motion.div
            className="absolute top-10 right-[250px] z-10"
            animate={{ y: [0, 5, 0] }}
            transition={{ repeat: Infinity, duration: 3 }}
          >
            <Image
              src="/assets/homepage/right_hand.svg"
              alt="Right Hand"
              width={200}
              height={200}
            />
          </motion.div>

          <h2 className="text-6xl md:text-6xl font-bold text-orange-500">
            Partners
          </h2>
          <div className="relative inline-block">
            <p className="text-4xl font-semibold text-[#FFD9B0]">
              Success Stories
            </p>

            {/* Left Star */}
            <div className="absolute -left-10 -bottom-2 w-4 h-4">
              <Image
                src="/assets/homepage/star.svg"
                alt="Star"
                className="w-full h-full"
                width={20}
                height={20}
              />
            </div>

            {/* Right Star */}
            <div className="absolute -right-10 -top-12 w-4 h-4">
              <Image
                src="/assets/homepage/star.svg"
                alt="Star"
                className="w-full h-full"
                width={20}
                height={20}
              />
            </div>
          </div>

          <p className="text-base md:text-lg mt-6 max-w-2xl mx-auto">
            Speak No More and Browse through the Wide <br />
            Array of Digital Success We assisted
          </p>

          <div className="container mx-auto px-4 pt-[2vw]">
            {/* Logos Grid */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-6 mt-10 px-4 md:px-10">
              {data.map((item, idx) => (
                <div
                  key={idx}
                  className="bg-white rounded-xl p-4 flex items-center justify-center shadow-md"
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

            <p className="text-md text-white mt-6">
              and many more... <span className="text-xl">👀</span>
            </p>
          </div>
        </div>

        {/* Decorative bubbles */}
        <Image
          src="/assets/homepage/left_bubble.svg"
          alt="Bubbles Decoration"
          width={200}
          height={200}
          className="absolute top-4 left-4 z-0"
        />
      </section>
    </>
  );
}
