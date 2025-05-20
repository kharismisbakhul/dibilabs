import Image from "next/image";

export default function HeroSoftware() {
  return (
    <>
      <section className="bg-white pt-24">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-6 md:px-16 py-24 flex flex-col md:flex-row items-center justify-between max-w-[1600px] mx-auto mt-5 relative">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-5xl font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-7xl">Seamless Digital <br />
              Experience with <br />
              Intelligent Design</span>
            </h2>
            <br />
            <p className="mt-4 text-3xl text-gray-200">
            By blending user psychology, data-driven <br />
            insights, and customized strategies, we <br />
            craft digital experiences that feel effortless, <br />
            perform flawlessly, and adapt to your <br />
            unique needs.
            </p>
          </div>
          {/* Image */}
          <div className="">
            <Image
              src="/assets/service/software/hero.svg" // Replace with your actual asset path
              alt="Payday Sale"
              width={700}
              height={800}
              className="right-0 bottom-0 absolute"
            />
          </div>
        </div>
      </section>
    </>
  );
}
