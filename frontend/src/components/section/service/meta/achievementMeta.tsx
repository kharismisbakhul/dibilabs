import { ServiceMetaAchievements } from "@/types/json/service_meta_achievements";

type Props = {
  data: ServiceMetaAchievements[]; // or Record<string, any>[]
};

export default function AchievementMeta({ data }: Props) {
  return (
    <>
      <section className="relative bg-white py-12 px-6 md:px-0 flex justify-center">
      <div className="text-center">
        <p className="text-3xl md:text-[50px] font-light text-black">
          Numbers <span className="font-bold text-[#F37021]">Don&apos;t Lie</span>
        </p>

        <div className="mt-8 space-y-3">

          {data.map((achievement, idx) => (
            <div key={idx} className="flex items-center justify-center">
            <div className={`${achievement.background_color} text-white px-8 py-4 md:py-5 flex justify-center items-center rounded-lg`}>
              <span className="text-4xl md:text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: `${achievement.text_color}`,
                }}>{achievement.achievement}</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-xl md:text-[40px] leading-none">{achievement.parameter}</p>
              </div>
            </div>
          </div>
          ))}

        </div>

      </div>
    </section>
    </>
  );
}
