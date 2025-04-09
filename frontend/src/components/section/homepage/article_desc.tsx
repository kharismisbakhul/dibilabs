import Image from "next/image";

export default function Article_desc() {
  return (
    <>
      {/* Article Desc*/}
      <section className="relative bg-white pt-16 pb-10">
        {/* Top-right SVG illustration */}
        <Image
          src="/assets/homepage/bite-cookies.svg"
          alt="Bite Cookie"
          width={400}
          height={400}
          className="absolute top-0 right-0 z-0 pointer-events-none"
        />

        {/* Content container */}
        <div className="relative z-10 max-w-7xl mx-auto px-4 md:px-8">
          {/* Header text */}
          <div className="mb-10 max-w-2xl">
            <h2 className="text-6xl font-bold text-black leading-tight mb-4">
              Bite Size
              <br />
              Strategies
            </h2>
            <p className="text-gray-700 text-xl">
              Gain insights and knowledge from our bite <br />
              sized news and articles of up to date digital <br />
              marketing news!
            </p>
          </div>
        </div>

        {/* YUM! Badge SVG */}
        <Image
          src="/assets/homepage/yum.svg"
          alt="YUM Badge"
          width={100}
          height={100}
          className="absolute right-6 bottom-16 z-0 pointer-events-none"
        />
      </section>
    </>
  );
}
