import { ServiceSosmedAchievements } from "@/types/json/service_sosmed_achievements";
import Image from "next/image";

type Props = {
  data: ServiceSosmedAchievements[]; // or Record<string, any>[]
};

export default function AchievementSosmed({ data }: Props) {
  return (
    <>
      <section className="relative bg-white py-12 px-4 md:px-0 flex justify-center">
        <div className="text-center">
          <h2 className="text-4xl md:text-[50px] font-light text-black">
            We’ve <span className="font-bold text-[#F37021]">Achieved</span>
          </h2>

          <div className="mt-8 space-y-3">
            {data.map((achievement, idx) => (
              <div key={idx} className="flex items-center justify-center">
                <div
                  className={`${achievement.background_color} text-white px-8 py-3 flex justify-center items-center rounded-lg`}
                >
                  {achievement.image != null ? (
                    <div className="py-3">
                      <Image
                        src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${achievement.image.url}`}
                        alt={achievement.image.name}
                        width={50}
                        height={40}
                        className="w-[50px] h-[40px]"
                      />
                    </div>
                      ) : (
                      <span className="text-5xl md:text-[60px] font-extrabold text-white">
                        <span
                          className="px-2"
                          style={{
                            WebkitTextStroke: "2px white",
                            WebkitTextFillColor: `${achievement.text_color}`,
                          }}
                        >
                            {
                              achievement.achievement
                            }
                        </span>
                      </span>
                      )
                      }
                  
                  <div className="text-left ml-4">
                    <p className="text-3xl md:text-[40px] leading-none">
                      {achievement.parameter}
                    </p>
                  </div>
                </div>
              </div>
            ))}
          </div>

          {/* Asterisks */}
          <Image
            src="/assets/service/sosmed/sharp_top.svg"
            alt="asterisk orange"
            width={0}
            height={0}
            className="absolute top-5 right-[10%] sm:right-[20%] md:right-[25%] w-[60px] md:w-[100px]"
          />

          <Image
            src="/assets/service/sosmed/sharp_bottom.svg"
            alt="asterisk black"
            width={0}
            height={0}
            className="absolute bottom-2 left-[5%] sm:left-[20%] md:left-[25%] w-[60px] md:w-[100px]"
          />
        </div>
      </section>
    </>
  );
}
