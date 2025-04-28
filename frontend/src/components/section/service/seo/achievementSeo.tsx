import Image from "next/image";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function AchievementSeo({ data }: Props) {
  return (
    <>
      <section className="bg-white py-12 px-4 md:px-16 lg:px-24 relative overflow-hidden">
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
