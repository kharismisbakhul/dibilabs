import Image from "next/image";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function HeroMeta({ data }: Props) {
  return (
    <>
      <section className="bg-white">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-6 md:px-16 py-24 flex flex-col md:flex-row items-center justify-between max-w-[1600px] mx-auto mt-5 relative">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-xl font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-7xl">
                Your Vision, Our <br />
                Precise Execution, <br />
                Shared Success. 
              </span>
            </h2>
            <br />
            <p className="mt-4 text-xl text-gray-200">
              Big ideas need smart execution. Our data-driven <br />
              precision and creative agility team turn your vision <br />
              into measurable results that keep growing.
            </p>
          </div>
          {/* Image */}
          <div className="">
            <Image
              src="/assets/service/meta/hero.svg" // Replace with your actual asset path
              alt="Payday Sale"
              width={400}
              height={500}
              className="right-0 bottom-0 absolute"
            />
          </div>
        </div>
      </section>
    </>
  );
}
