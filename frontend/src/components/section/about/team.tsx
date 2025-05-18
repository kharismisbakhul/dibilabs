import Image from "next/image";
import { AboutTeams } from "@/types/json/about_teams";

type Props = {
  data: AboutTeams[]; // or Record<string, any>[]
};

export default function Team({ data }: Props) {
  return (
    <section className="text-center bg-white mt-[250px]">
      {/* Title */}
      <div className="flex items-center justify-center gap-20 mb-[50px]">
        <div className="animate-pulse-slow">
          <Image src="/assets/about/heart_left.svg" alt="Heart left" width={200} height={200} />
        </div>
        <h2 className="text-7xl font-bold bg-blue-700 text-white px-16 py-3 rounded-md">Our Team</h2>
        <div className="animate-pulse-slow">
          <Image src="/assets/about/heart_right.svg" alt="Heart right" width={200} height={200} />
        </div>
      </div>

      {/* Grid of images */}
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3">
        {data.map((item, i) => (
          <div
            key={i}
            className="group w-full aspect-[4/4] relative overflow-hidden rounded-lg shadow-md hover:shadow-xl transition duration-300"
          >
            <Image
              src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.photo.url}`}
              alt={item.photo.name}
              layout="fill"
              objectFit="cover"
              className="transform group-hover:scale-105 transition duration-300 ease-in-out"
            />
            {/* Optional dark overlay on hover */}
            <div className="absolute inset-0 bg-black/0 group-hover:bg-black/30 transition duration-300"></div>
          </div>
        ))}
      </div>

    </section>
  );
}
