import { AboutPhoto } from "@/types/json/about_photo";
import Image from "next/image";

type Props = {
  data: AboutPhoto; // or Record<string, any>
};

export default function About_us({ data }: Props) {
  return (
    <>
      {/* About us */}
      <section className="w-full bg-white text-white">
        {/* Top Group Photo */}
        <div className="relative w-full h-auto">
          <Image
            src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${data.photo.url}`}
            alt={data.photo.name}
            width={1920}
            height={1080}
            className="w-full h-auto object-cover"
          />

          {/* Bottom wave */}
          <div className="absolute -bottom-1 left-0 w-full overflow-visible leading-[0] z-20 rotate-180">
            <div className="flex justify-between w-full">
              {Array.from({ length: 10 }).map((_, i) => (
                <div
                  key={i}
                  className="w-[10vw] h-[5vw] bg-[#231F20] rounded-b-full"
                />
              ))}
            </div>
          </div>

        </div>

        {/* Content Section */}
        <div className="bg-[#231F20] text-white text-center py-12 relative z-20">
          <div className="flex justify-between items-center mx-auto gap-5 md:gap-10 mb-4">
            <div className="animate-bounce-smooth">
              <Image
                src="/assets/about/thumb.svg"
                alt="thumbs up"
                width={200}
                height={200}
                className="w-[100px] md:w-[200px] h-auto mx-auto"
              />
            </div>
            
            <h2 className="bg-[#F26522] text-white px-12 py-2 md:px-20 md:py-4 rounded-md text-4xl md:text-7xl font-bold">
              About Us
            </h2>
            <div className="mr-[30px] animate-pulse-slow">
              <Image
                src="/assets/about/eyes.svg"
                alt="eyes icon"
                width={200}
                height={200}
                className="w-[100px] md:w-[200px] h-auto mx-auto"
              />
            </div>
          </div>


          <h3 className="mx-auto mt-7 text-xl md:text-3xl leading-relaxed">
            As part of dibimbing.id, an edu-tech company focusing on solving <br />
            unemployment with digital skills training, Dibilabs serves as a onestop Digital <br />
            Marketing Activation Service that focuses on your business objectives.
          </h3>

          <br />

          <h3 className="mx-auto mt-7 text-lg md:text-3xl leading-relaxed">
            Founded in 2022, Dibilabs started off as a social media agency. Further <br />
            understanding the complexity and challenges of digitalization, we set out a <br />
            goal to assist the digitalization transition for education institutions and <br />
            startups.
          </h3>
        </div>
      </section>
    </>
  );
}
