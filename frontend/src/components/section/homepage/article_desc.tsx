import Image from "next/image";

export default function Article_desc() {
  return (
    <>
      {/* Article Desc*/}
      <section className="relative bg-white pt-16 pb-10">
        {/* Top-right SVG illustration */}
        <div className="absolute -top-[100px] right-0 z-20 w-[500px] h-[500px] pointer-events-none">
          <Image
            src="/assets/homepage/bite-cookies.svg"
            alt="Bite Cookie"
            fill
            className="object-contain"
          />
        </div>

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
        <div className="absolute right-6 bottom-6 z-0 w-[150px] h-[150px] pointer-events-none">
          <Image
            src="/assets/homepage/yum.svg"
            alt="YUM Badge"
            fill
            className="object-contain"
          />
        </div>
      </section>
    </>
  );
}
