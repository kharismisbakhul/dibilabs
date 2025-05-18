import { ServiceSeoAchievements } from "@/types/json/service_seo_achievements";
import Image from "next/image";

type Props = {
  data: ServiceSeoAchievements[]; // or Record<string, any>[]
};

export default function AchievementSeo({ data }: Props) {
  return (
    <>
      <section className="bg-white py-12 px-4 md:px-16 lg:px-24 relative overflow-hidden">
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
