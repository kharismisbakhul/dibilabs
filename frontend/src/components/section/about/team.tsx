import Image from "next/image";

const teamImages = [
  "/assets/about/member1.png",
  "/assets/about/member2.png",
  "/assets/about/member3.png",
  "/assets/about/member4.png",
  "/assets/about/member5.png",
  "/assets/about/member6.png",
  "/assets/about/member7.png",
  "/assets/about/member8.png",
  "/assets/about/member9.png",
];

export default function Team() {
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
        {teamImages.map((src, i) => (
          <div key={i} className="w-full aspect-[4/4] relative overflow-hidden">
            <Image
              src={src}
              alt={`Team Member ${i + 1}`}
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
