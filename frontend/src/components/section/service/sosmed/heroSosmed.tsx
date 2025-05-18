import Image from "next/image";

export default function HeroSosmed() {
  return (
    <>
      <section className="bg-white">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-6 md:px-16 py-10 flex flex-col md:flex-row items-center justify-between max-w-[1600px] mx-auto mt-5">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-5xl font-semibold leading-tight">
              From <span className="text-[#F97316] font-bold text-7xl">Visibility</span>{" "}
              <br /> to{" "}
              <span className="text-[#F97316] font-bold text-7xl">Virality</span>
            </h2>
            <br />
            <p className="mt-4 text-3xl text-gray-200">
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
              width={500}
              height={600}
              className="rounded-md mx-auto"
            />
          </div>
        </div>
      </section>
    </>
  );
}
