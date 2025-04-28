import Image from "next/image";

export default function HeroSeo() {
  return (
    <>
      <section className="bg-white">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-6 md:px-16 py-24 flex flex-col md:flex-row items-center justify-between max-w-[1600px] mx-auto mt-5 relative">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-xl font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-7xl">
                Rank, Convert,
                <br />
                and Perform <br />
                with SEO
              </span>
            </h2>
            <br />
            <p className="mt-4 text-xl text-gray-200">
              Our strategic approach ensures long-term <br />
              visibility, transforming organic traffic into <br />
              sustainable business growth with content <br />
              that ranks, shines, and converts.
            </p>
          </div>
          {/* Image */}
          <div className="">
            <Image
              src="/assets/service/seo/hero.svg" // Replace with your actual asset path
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
