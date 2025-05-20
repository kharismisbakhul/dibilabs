import Image from "next/image";

export default function HeroGoogle() {
  return (
    <>
      <section className="bg-white pt-24">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-6 md:px-16 py-24 flex flex-col md:flex-row items-center justify-between max-w-[1600px] mx-auto mt-5 relative">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-xl font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-7xl">Certified by Google, <br />
              Driven by Data</span>
            </h2>
            <br />
            <p className="mt-4 text-3xl text-gray-200">
            Advertising without data leads to inefficient <br />
            spending, and declining performance. As a <br />
            Google Partner, we utilize smart bidding, <br />
            advanced audience insights, and precise <br />
            targeting to maximize impact and optimize <br />
            every advertising investmen
            </p>
          </div>
          {/* Image */}
          <div className="">
            <Image
              src="/assets/service/google/hero.svg" // Replace with your actual asset path
              alt="Payday Sale"
              width={600}
              height={700}
              className="right-0 bottom-0 absolute"
            />
          </div>
        </div>
      </section>
    </>
  );
}
