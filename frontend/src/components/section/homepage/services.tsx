import { HomepageServices } from "@/types/json/homepage_services";
import Image from "next/image";

type Props = {
  data: HomepageServices[]; // or Record<string, any>[]
};

export default function Services({ data }: Props) {
  return (
    <>
      {/* Services */}
      <section className="relative bg-white">
        {/* Top Bubbles */}
        <Image
          src="/assets/homepage/left_bubble_white.svg"
          alt="Bubble"
          width={200}
          height={200}
          className="absolute top-0 left-0 z-30"
        />

        {/* Orange Section */}
        <div className="bg-orange-500 pt-[7vw] pb-[5vw] py-6 px-6 text-white text-center relative">
          <h2 className="text-6xl">
            We offer a wide array of services to assist <br />
            your <span className="font-extrabold">Digital Marketing Journey</span>
          </h2>
          <Image
            src="/assets/homepage/right_bubble_white.svg"
            alt="Bubble"
            width={120}
            height={120}
            className="absolute bottom-4 right-4 z-10"
          />
        </div>

        {/* Black Cards Section */}
        <div className="bg-orange-500">
          <div className="bg-black rounded-t-[60px] py-14 px-4 md:px-10 text-white text-center relative z-10 pb-[100px]">
            <div className="container mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
              {data.map((item, idx) => (
                <div
                  key={idx}
                  className="bg-white text-black rounded-2xl shadow-md p-6 flex flex-col items-center relative mt-6 h-full"
                >
                  <div className="absolute -top-14 left-1/2 transform -translate-x-1/2">
                    <Image
                      src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.icon.url}`}
                      alt={item.icon.name}
                      width={200}
                      height={200}
                      className="z-30"
                    />
                  </div>

                  {/* Spacer for image size */}
                  <Image
                    src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.icon.url}`}
                    alt={item.icon.name}
                    width={120}
                    height={120}
                    className="opacity-0"
                  />

                  {/* Content block with flexible space */}
                  <div className="flex flex-col justify-between flex-1 w-full items-center">
                    <div className="flex flex-col items-center">
                      <h3 className="mt-4 text-2xl font-bold text-center text-orange-500">
                        {item.title}
                      </h3>
                      <p className="text-base text-center mt-2">{item.description}</p>
                    </div>

                    <button className="mt-4 px-4 py-2 bg-[#065097] text-white rounded-full text-lg">
                      Learn more →
                    </button>
                  </div>
                </div>
              ))}
            </div>

          </div>
        </div>
      </section>
    </>
  );
}
