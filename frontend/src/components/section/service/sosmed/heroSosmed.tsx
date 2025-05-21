import Image from "next/image";

export default function HeroSosmed() {
  return (
    <>
      <section className="bg-white pt-24">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-10 md:px-16 py-16 md:py-16 flex flex-col md:flex-row items-left justify-between max-w-[1600px] mx-auto mt-5 relative overflow-hidden">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0 md:mt-[100px]">
            <h2 className="text-2xl md:text-5xl font-semibold leading-tight">
              From <span className="text-[#F97316] font-bold text-4xl md:text-7xl">Visibility</span>{" "}
              <br /> to{" "}
              <span className="text-[#F97316] font-bold text-4xl md:text-7xl">Virality</span>
            </h2>
            <br />
            <p className="mt-4 text-lg md:text-3xl text-gray-200">
              We engineer social media success through <br />
              engaging storytelling, data-backed content, <br />
              and platform-specific tactics, turning brand <br />
              awareness into real engagement and loyal <br /> 
              audiences.
            </p>
          </div>
          {/* Image */}
          <div className="">
            <Image
              src="/assets/service/sosmed/sale.png" // Replace with your actual asset path
              alt="Payday Sale"
              width={500}
              height={600}
              className="right-0 bottom-[100px] md:bottom-0 absolute rounded-md mx-auto w-[200px] md:w-[500px] h-auto"
            />
          </div>
        </div>
      </section>
    </>
  );
}
