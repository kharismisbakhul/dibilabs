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
        <div className="absolute right-0 top-0 z-0 w-[180px] h-[180px]">
          <Image
            src="/assets/homepage/right_bubble.svg"
            alt="Bubbles Decoration"
            fill
            className="opacity-80"
          />
        </div>

        <div className="text-center z-10 relative text-orange-600">
          <h2 className="text-6xl ">
            Our Partners <span className="font-bold">Achievements</span>,
          </h2>
          <p className="text-6xl mt-2">
            a Testament to <span className="font-bold">Our Excellence</span>.
          </p>
        </div>

        <div className="flex flex-wrap justify-center gap-10 mt-16 z-10 relative">
          {/* Block Item */}

          {data.map((item, index) => (
            <div key={index} className="flex flex-col items-center w-40">
              <div className="relative group w-40 h-40 rounded-full overflow-visible">
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
                    <span className="text-2xl font-bold">{item.value}</span>
                    <span className="text-sm">{item.description}</span>
                  </div>
                </div>
              </div>
              <br />
              <div className="relative w-[200px] h-[200px] mt-10 animate-bounce-smooth">
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
