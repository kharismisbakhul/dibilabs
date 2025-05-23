import { ServiceCores } from "@/types/json/service_cores";
import Image from "next/image";

type Props = {
  data: ServiceCores[]; // or Record<string, any>[]
};

export default function CoreGoogle({ data }: Props) {
  return (
    <>
      <section className="bg-white py-16 px-10">
        {/* Header */}
        <div className="flex flex-row md:flex-row justify-between items-start md:items-center mb-10">
          <div>
            <h2 className="text-7xl md:text-[150px] font-bold text-orange-500 leading-none">
              Core
            </h2>
            <h3 className="text-9xl md:text-[230px] font-extrabold text-black leading-none">
              Value
            </h3>
          </div>
          <div className="relative mt-10 md:mt-0">
            <div className="absolute right-0 -top-10 md:top-[-200px] md:right-0 z-40 w-[180px] md:w-[500px]">
              <Image
                src="/assets/service/google/bite-cookies.svg" // Replace with your correct asset path
                alt="Cookie Illustration"
                width={500}
                height={500}
              />
            </div>
            <div className="absolute right-[-30px] bottom-[-150px] md:bottom-[-150px] w-[80px] md:w-[150px]">
              <Image
                src="/assets/service/google/yum.svg" // Replace with your correct asset path
                alt="YUM!"
                width={150}
                height={150}
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
              <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.background.url}`}
                alt={item.background.name}
                width={200}
                height={200}
                className="absolute left-0 bottom-0 w-[160px] md:w-[200px]"
              />
              <div className="relative p-[50px] md:p-[100px]">
                <p className="text-[40px] md:text-[60px] font-bold leading-tight">
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
