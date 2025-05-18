import { ServiceGoogleAchievements } from "@/types/json/service_google_achievements";

type Props = {
  data: ServiceGoogleAchievements[]; // or Record<string, any>[]
};

export default function AchievementGoogle({ data }: Props) {
  return (
    <>
      <section className="relative bg-white py-12 px-4 md:px-0 flex justify-center">
      <div className="text-center">
        <h2 className="text-[50px] font-light text-black">
          We’ve <span className="font-bold text-[#F37021]">Achieved</span>
        </h2>

        <div className="mt-8 space-y-3">
          {data.map((achievement, idx) => (
            <div key={idx} className="flex items-center justify-center">
            <div className={`${achievement.background_color} text-white px-8 flex justify-center items-center rounded-lg`}>
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: `${achievement.text_color}`,
                }}>{achievement.achievement}</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[40px] leading-none">{achievement.parameter}</p>
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
