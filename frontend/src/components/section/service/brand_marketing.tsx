import Image from "next/image";

export default function Brand_marketing() {
  return (
    <>
      <div className="relative w-full min-h-screen bg-white overflow-hidden">
        {/* Fullscreen background bubbles */}
        <div className="relative inset-0 z-20 pointer-events-none">
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
          <p className="text-4xl italic text-center font-semibold text-black -rotate-[6deg]">
            Creative, Marketing, and Communications
          </p>
          <div className="mt-2">
            <Image
              src="/assets/service/title.svg"
              alt="Brand and Marketing Services Title"
              width={1200}
              height={400}
            />
          </div>
        </div>

        <div className="absolute z-30 top-[1050px] left-[100px] text-white">
          <h2 className="text-8xl font-bold">Digital</h2>
          <p className="text-8xl mb-4">Advertising</p>
          <button className="bg-orange-500 text-white py-3 px-8 rounded-full text-3xl font-bold">
            Learn more →
          </button>
        </div>

        <div className="absolute z-30 top-[820px] right-[230px] text-white text-center">
          <h2 className="text-8xl font-semibold">Social Media</h2>
          <p className="text-8xl mb-4">Handling</p>
          <button className="bg-white text-black py-3 px-8 rounded-full text-3xl font-bold">
            Learn more <span className="text-orange-500">→</span>
          </button>
        </div>

        <div className="absolute z-30 top-[1580px] right-[100px] text-white text-right">
          <h2 className="text-6xl font-semibold">Shoppertainment</h2>
          <p className="text-9xl mb-4">Hacks</p>
          <button className="bg-[#065097] text-white py-3 px-8 rounded-full text-3xl font-bold">
            Learn more →
          </button>
        </div>

        <div className="absolute z-30 top-[2000px] left-[250px] text-white text-center">
          <h2 className="text-9xl font-bold">Influencer</h2>
          <p className="text-9xl mb-4">Marketing</p>
          <button className="bg-white text-black py-3 px-8 rounded-full text-3xl font-bold">
            Learn more <span className="text-orange-500">→</span>
          </button>
        </div>

        <Image
          src="/assets/service/office_mask.png"
          alt="People working"
          height={1900}
          width={1900}
          className="absolute -bottom-[400px] z-0"
          priority
        />

        {/* Overlay content */}
        <div className="relative z-30 max-w-6xl ml-[150px] py-[250px]">
          <div className="max-w-2xl">
            <p className="text-2xl font-semibold text-white">
              Digital Infrastructure Solutions
            </p>
            <h1 className="text-7xl font-bold leading-tight mt-2 text-white">
              Streamline and <br />
              Digitize Your <br />
              Business Process
            </h1>
          </div>
        </div>

        {/* Floating SVGs on the right */}
        <div className="absolute bottom-0 right-0 z-30">
          <Image
            src="/assets/service/bubble_white.svg"
            alt="circle 1"
            width={500}
            height={500}
            className="object-contain"
          />
        </div>
      </div>
    </>
  );
}
