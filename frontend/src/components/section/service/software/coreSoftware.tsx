import { ServiceCores } from "@/types/json/service_cores";
import Image from "next/image";

type Props = {
  data: ServiceCores[]; // or Record<string, any>[]
};

export default function CoreSoftware({ data }: Props) {
  return (
    <>
      <section className="bg-white py-16 px-10">
        {/* Header */}
        <div className="flex flex-col md:flex-row justify-between items-start md:items-center mb-10">
          <div>
            <h2 className="text-[150px] font-bold text-orange-500 leading-none">
              Core
            </h2>
            <h3 className="text-[230px] font-extrabold text-black leading-none">
              Value
            </h3>
          </div>
          <div className="relative mt-10 md:mt-0">
            <Image
              src="/assets/service/sosmed/bite-cookies.svg" // Replace with your correct asset path
              alt="Cookie Illustration"
              width={500}
              height={500}
              className="block right-0 z-40"
            />
            <div className="absolute right-[-30px] bottom-[-10px]">
              <Image
                src="/assets/service/sosmed/yum.svg" // Replace with your correct asset path
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
                className="absolute left-0 bottom-0"
              />
              <div className="relative p-[100px]">
                <p className="text-[60px] font-bold leading-tight">
                  {item.text1}
                </p>
                <p className="text-[32px]">{item.text2}</p>
              </div>
            </div>
          ))}
        </div>
      </section>
    </>
  );
}
