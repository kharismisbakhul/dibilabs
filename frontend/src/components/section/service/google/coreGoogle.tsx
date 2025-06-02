import { ServiceCores } from "@/types/json/service_cores";
import Image from "next/image";

type Props = {
  data: ServiceCores[]; // or Record<string, any>[]
};

export default function CoreGoogle({ data }: Props) {
  return (
    <>
      <section className="bg-white pb-16 pt-5 md:pb-24 md:pt-10 px-10">
        {/* Header */}
        <div className="flex flex-row md:flex-row justify-between items-start md:items-center mb-10">
          <div>
            <h2 className="text-5xl md:text-[150px] font-bold text-orange-500 leading-none">
              Core
            </h2>
            <h3 className="text-6xl md:text-[230px] font-extrabold text-black leading-none">
              Value
            </h3>
          </div>
          <div className="relative mt-10 md:mt-0">
            {/* Cookie Image */}
            <div className="absolute right-0 -top-20 md:top-[-300px] md:right-0 z-40 w-[130px] md:w-[500px] h-[130px] md:h-[500px]">
              {" "}
              {/* Added height */}
              <Image
                src="/assets/service/meta/bite-cookies.svg"
                alt="Cookie Illustration"
                fill
                sizes="(max-width: 768px) 130px, 500px"
                className="object-contain" // Maintain aspect ratio
              />
            </div>

            {/* YUM Image */}
            <div className="absolute right-[-20px] bottom-[-80px] md:bottom-[-150px] w-[60px] md:w-[150px] h-[60px] md:h-[150px]">
              {" "}
              {/* Added height */}
              <Image
                src="/assets/service/meta/yum.svg"
                alt="YUM!"
                fill
                sizes="(max-width: 768px) 60px, 150px"
                className="object-contain" // Maintain aspect ratio
              />
            </div>
          </div>
        </div>

        {/* Grid Section */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {data.map((item, idx) => (
            <div
              key={idx}
              className={`rounded-2xl ${item.background_color} relative overflow-hidden text-white text-center`}
            >
              <div className="absolute left-0 bottom-0 w-[120px] md:w-[200px] h-[120px] md:h-[200px]">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.background.url}`}
                  alt={item.background.name}
                  fill
                  sizes="(max-width: 768px) 120px, 200px"
                  className="object-cover" // or "object-contain"
                />
              </div>
              <div className="relative p-[30px] md:p-[100px]">
                <p className="text-[35px] md:text-[60px] font-bold leading-tight">
                  {item.text1}
                </p>
                <p className="text-[20px] md:text-[32px]">{item.text2}</p>
              </div>
            </div>
          ))}
        </div>
      </section>
    </>
  );
}
