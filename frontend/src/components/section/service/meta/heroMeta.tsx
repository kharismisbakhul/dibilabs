import Image from "next/image";

export default function HeroMeta() {
  return (
    <>
      <section className="bg-white pt-24">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-10 md:px-16 py-16 md:py-24 flex flex-col md:flex-col items-left justify-between max-w-[1600px] mx-auto mt-5 relative overflow-hidden">
          {/* Text */}
          <div className="w-full md:w-1/2 mb-6 md:mb-0">
            <h2 className="font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-4xl md:text-7xl">
                Your Vision, Our <br />
                Precise Execution, <br />
                Shared Success. 
              </span>
            </h2>
            <br />
            <p className="mt-4 text-lg md:text-3xl text-gray-200">
              Big ideas need smart execution. Our data-driven <br />
              precision and creative agility team turn your vision <br />
              into measurable results that keep growing.
            </p>
          </div>
          {/* Image */}
          <div className="w-full h-auto">
            <Image
              src="/assets/service/meta/hero.svg"
              alt="Payday Sale"
              width={500}
              height={600}
              className="absolute right-0 bottom-0 w-[200px] md:w-[500px] h-auto"
            />
          </div>
        </div>
      </section>
    </>
  );
}
