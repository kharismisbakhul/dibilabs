import Image from "next/image";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function HeroSosmed({ data }: Props) {
  return (
    <>
      <section className="bg-white">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-6 md:px-16 py-10 flex flex-col md:flex-row items-center justify-between max-w-[1600px] mx-auto mt-5">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-xl font-semibold leading-tight">
              From <span className="text-[#F97316] font-bold text-5xl">Visibility</span>{" "}
              <br /> to{" "}
              <span className="text-[#F97316] font-bold text-5xl">Virality</span>
            </h2>
            <br />
            <p className="mt-4 text-xl text-gray-200">
              We engineer social media success through <br />
              engaging storytelling, data-backed content, <br />
              and platform-specific tactics, turning brand <br />
              awareness into real engagement and loyal <br /> 
              audiences.
            </p>
          </div>
          {/* Image */}
          <div className="md:w-1/2">
            <Image
              src="/assets/service/sosmed/sale.png" // Replace with your actual asset path
              alt="Payday Sale"
              width={400}
              height={500}
              className="rounded-md mx-auto"
            />
          </div>
        </div>
      </section>
    </>
  );
}
