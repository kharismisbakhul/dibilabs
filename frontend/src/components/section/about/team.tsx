import Image from "next/image";
import { AboutTeams } from "@/types/json/about_teams";

type Props = {
  data: AboutTeams[]; // or Record<string, any>[]
};

export default function Team({ data }: Props) {
  return (
    <section className="text-center bg-white mt-[250px]">
      {/* Title */}
      <div className="flex items-center justify-center gap-10 mb-[50px]">
        <Image src="/assets/about/heart_left.svg" alt="Heart left" width={100} height={100} />
        <h2 className="text-5xl font-bold bg-blue-700 text-white px-8 py-3 rounded-md">Our Team</h2>
        <Image src="/assets/about/heart_right.svg" alt="Heart right" width={100} height={100} />
      </div>

      {/* Grid of images */}
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3">
        {data.map((item, i) => (
          <div key={i} className="w-full aspect-[4/4] relative overflow-hidden">
            <Image
              src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.photo.url}`}
              alt={item.photo.name}
              layout="fill"
              objectFit="cover"
              className=""
            />
          </div>
        ))}
      </div>
    </section>
  );
}
