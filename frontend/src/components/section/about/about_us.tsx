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
                className="w-[70px] md:w-[200px] h-auto mx-auto"
              />
            </div>
            
            <p className="bg-[#F26522] text-white px-6 py-2 md:px-20 md:py-4 rounded-md text-2xl md:text-7xl font-bold">
              About Us
            </p>
            <div className="mr-[30px] animate-pulse-slow">
              <Image
                src="/assets/about/eyes.svg"
                alt="eyes icon"
                width={200}
                height={200}
                className="w-[70px] md:w-[200px] h-auto mx-auto"
              />
            </div>
          </div>


          <p className="mx-auto mt-7 text-lg md:text-3xl leading-relaxed px-4 md:px-0">
            As part of dibimbing.id, an edu-tech company focusing on solving <br className="hidden md:block" />
            unemployment with digital skills training, Dibilabs serves as a onestop Digital <br className="hidden md:block" />
            Marketing Activation Service that focuses on your business objectives.
          </p>

          <br />

          <p className="mx-auto mt-7 text-lg md:text-3xl leading-relaxed px-4 md:px-0">
            Founded in 2022, Dibilabs started off as a social media agency. Further <br className="hidden md:block" />
            understanding the complexity and challenges of digitalization, we set out a <br className="hidden md:block" />
            goal to assist the digitalization transition for education institutions and <br className="hidden md:block" />
            startups.
          </p>
        </div>
      </section>
    </>
  );
}
