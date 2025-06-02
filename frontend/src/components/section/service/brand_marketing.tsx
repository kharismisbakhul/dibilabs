import Image from "next/image";

export default function Brand_marketing() {
  return (
    <>
      <div className="relative w-full min-h-screen bg-white overflow-hidden">
        {/* Fullscreen background bubbles */}
        <div className="relative inset-0 z-20 pointer-events-none top-[100px] md:top-0">
          <Image
            src="/assets/service/bg_dots.svg"
            alt="Bubbles Background"
            width={1900}
            height={1900}
            className="object-contain"
            priority
          />
        </div>

        {/* Header Section */}
        <div className="absolute top-10 left-1/2 transform -translate-x-1/2 z-10 text-center z-0">
          <p className="text-sm md:text-4xl italic text-center font-semibold text-black -rotate-[6deg]">
            Creative, Marketing, and Communications
          </p>
          <div className="w-[300px] h-[100px] md:w-[800px] md:h-[400px]">
            <Image
              src="/assets/service/title.svg"
              alt="Brand and Marketing Services Title"
              width={1200}
              height={400}
            />
          </div>
        </div>

        <div className="absolute z-30 top-[330px] left-[25px] md:top-[1050px] md:left-[100px] text-white">
          <h2 className="text-xl md:text-8xl font-bold">Digital</h2>
          <p className="text-xl md:text-8xl mb-4">Advertising</p>
          <button className="bg-orange-500 text-white py-2 px-4 md:py-3 md:px-8 rounded-full text-sm md:text-3xl font-bold">
            Learn more →
          </button>
        </div>

        <div className="absolute z-30 top-[280px] right-[65px] md:top-[820px] md:right-[230px] text-white text-center">
          <h2 className="text-xl md:text-8xl font-semibold">Social Media</h2>
          <p className="text-xl md:text-8xl mb-4">Handling</p>
          <button className="bg-white text-black py-2 px-3 md:py-3 md:px-8 rounded-full text-xs md:text-3xl font-bold">
            Learn more <span className="text-orange-500">→</span>
          </button>
        </div>

        <div className="absolute z-30 top-[465px] right-[15px] md:top-[1580px] md:right-[100px] text-white text-right">
          <h2 className="text-base md:text-6xl font-semibold">Shoppertainment</h2>
          <p className="text-xl md:text-9xl mb-4">Hacks</p>
          <button className="bg-[#065097] text-white py-2 px-3 md:py-3 md:px-8 rounded-full text-sm md:text-3xl font-bold">
            Learn more →
          </button>
        </div>

        <div className="absolute z-30 top-[570px] left-[80px] md:top-[2000px] md:left-[250px] text-white text-center">
          <h2 className="text-2xl md:text-9xl font-bold">Influencer</h2>
          <p className="text-2xl md:text-9xl mb-4">Marketing</p>
          <button className="bg-white text-black px-3 py-2 md:py-3 md:px-8 rounded-full text-sm md:text-3xl font-bold">
            Learn more <span className="text-orange-500">→</span>
          </button>
        </div>

        <Image
          src="/assets/service/office_mask.png"
          alt="People working"
          height={1900}
          width={1900}
          className="absolute -bottom-[0px] md:-bottom-[400px] z-0"
          priority
        />

        {/* Overlay content */}
        <div className="relative z-30 max-w-2xl md:max-w-6xl ml-[50px] md:ml-[150px] py-[100px] md:py-[250px]">
          <div className="max-w-2xl">
            <p className="mt-2 text-xl md:text-2xl font-semibold text-white">
              Digital Infrastructure Solutions
            </p>
            <h1 className="text-3xl md:text-7xl font-bold leading-tight mt-2 text-white">
              Streamline and <br />
              Digitize Your <br />
              Business Process
            </h1>
          </div>
        </div>

        {/* Floating SVGs on the right */}
        <div className="absolute bottom-[100px] md:bottom-0 right-[-20px] md:right-[-150px] z-30 w-[150px] md:w-[900px] aspect-square">
          <Image
            src="/assets/service/bubble_white.svg"
            alt="circle 1"
            fill
            className="object-contain"
            sizes="(max-width: 768px) 150px, 900px"
            unoptimized={true}
          />
        </div>
      </div>
    </>
  );
}
