import Image from "next/image";

export default function HeroWebdev() {
  return (
    <>
      <section className="bg-white">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-6 md:px-16 py-24 flex flex-col md:flex-row items-center justify-between max-w-[1600px] mx-auto mt-5 relative">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-5xl font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-7xl">Blending Aesthetics <br />
              & Functionality for <br />
              Maximum Impact</span>
            </h2>
            <br />
            <p className="mt-4 text-3xl text-gray-200">
            More than just an online presence, your <br />
            website should work for you. With data-driven <br />
            design, seamless functionality, and continuous <br />
            optimization, we transform your platform into a <br />
            growth engine.
            </p>
          </div>
          {/* Image */}
          <div className="">
            <Image
              src="/assets/service/webdev/hero.svg" // Replace with your actual asset path
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
