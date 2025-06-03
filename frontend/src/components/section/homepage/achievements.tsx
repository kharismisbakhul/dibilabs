import { HomepageAchievements } from "@/types/json/homepage_achievements";
import Image from "next/image";

type Props = {
  data: HomepageAchievements[]; // or Record<string, any>[]
};

export default function Achievements({ data }: Props) {
  return (
    <>
      <section className="bg-white py-12 px-4 md:px-16 lg:px-24 relative overflow-hidden">
        {/* Top Right Bubble Decoration */}
        <div className="absolute right-0 top-0 z-0 md:w-[180px] md:h-[180px] w-[80px] h-[80px]">
          <Image
            src="/assets/homepage/right_bubble.svg"
            alt="Bubbles Decoration"
            fill
            className="opacity-80"
          />
        </div>

        <div className="text-center z-10 relative text-orange-600 mt-8">
          <h2 className="text-2xl md:text-6xl ">
            Our Partners <span className="font-bold">Achievements</span>,
          </h2>
          <p className="text-2xl md:text-6xl mt-2">
            a Testament to <span className="font-bold">Our Excellence</span>.
          </p>
        </div>

        <div className="flex flex-wrap justify-center gap-10 mt-16 z-10 relative">
          {/* Block Item */}

          {data.map((item, index) => (
            <div key={index} className="flex flex-col items-center w-36 md:w-48">
              <div className="relative group w-36 h-36 md:w-48 md:h-48 rounded-full overflow-visible">
                {/* Outer glow/shadow (visible by default) */}
                <div
                  className={`absolute -inset-2 rounded-full blur-xl opacity-60 ${item.background_color}`}
                ></div>

                {/* Main circle with white background and hover fill */}
                <div className="relative w-full h-full rounded-full bg-white text-black overflow-hidden transition-colors duration-500 group-hover:bg-transparent">
                  {/* Hover fill effect (animates to cover white) */}
                  <div
                    className={`absolute inset-0 ${item.background_color} scale-0 group-hover:scale-100 transition-transform duration-500 origin-center rounded-full z-0`}
                  ></div>

                  {/* Content */}
                  <div className="relative z-10 flex flex-col justify-center items-center text-center w-full h-full group-hover:text-white transition-colors duration-500">
                    <span className="text-base md:text-2xl font-bold">{item.value}</span>
                    <span className="text-xs md:text-sm">{item.description}</span>
                  </div>
                </div>
              </div>
              <br />
              <div className="relative w-[130px] h-[130px] md:w-[200px] md:h-[200px] mt-10 animate-bounce-smooth">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.image.url}`}
                  alt={item.image.name}
                  fill
                  className="object-contain"
                />
              </div>
            </div>
          ))}
        </div>
      </section>
    </>
  );
}
