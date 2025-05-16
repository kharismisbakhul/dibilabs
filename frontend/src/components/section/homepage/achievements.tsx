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
          <h2 className="text-3xl md:text-4xl ">
            Our Partners <span className="font-bold">Achievements</span>,
          </h2>
          <p className="text-3xl md:text-4xl mt-2">
            a Testament to <span className="font-bold">Our Excellence</span>.
          </p>
        </div>

        <div className="flex flex-wrap justify-center gap-10 mt-16 z-10 relative">
          {/* Block Item */}

          {data.map((item, index) => (
            <div key={index} className="flex flex-col items-center w-40">
              <div
                className={`${item.background_color} text-white rounded-full w-28 h-28 flex flex-col justify-center items-center text-center p-2`}
              >
                <span className="text-lg font-bold">{item.value}</span>
                <span className="text-xs">{item.description}</span>
              </div>
              <div className="relative w-[100px] h-[100px] mt-4">
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
