import Image from "next/image";

type Props = {
  data: any; // or Record<string, any>
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
          <div className="absolute -bottom-0 left-0 w-full overflow-visible leading-[0] z-20 rotate-180">
            <div className="flex justify-between w-full">
              {Array.from({ length: 10 }).map((_, i) => (
                <div
                  key={i}
                  className="w-[10vw] h-[5vw] bg-black rounded-b-full"
                />
              ))}
            </div>
          </div>

        </div>

        {/* Content Section */}
        <div className="bg-black text-white text-center px-6 py-12 relative z-20">
          <div className="flex justify-between items-center mx-auto gap-10 mb-4">
            <Image
              src="/assets/about/thumb.svg"
              alt="thumbs up"
              width={150}
              height={150}
            />
            <h2 className="bg-[#F26522] text-white px-6 py-4 rounded-md text-6xl font-bold">
              About Us
            </h2>
            <Image
              src="/assets/about/eyes.svg"
              alt="eyes icon"
              width={150}
              height={150}
            />
          </div>

          <h3 className="mx-auto mt-4 text-2xl leading-relaxed">
            As part of dibimbing.id, an edu-tech company focusing on solving <br />
            unemployment with digital skills training, Dibilabs serves as a onestop Digital <br />
            Marketing Activation Service that focuses on your business objectives.
          </h3>

          <br />

          <h3 className="mx-auto mt-4 text-2xl leading-relaxed">
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
