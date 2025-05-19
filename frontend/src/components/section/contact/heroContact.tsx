import Image from "next/image";

export default function HeroContact() {
  return (
    <>
      <div className="bg-white text-orange-600 pt-16">
        <div className="">
          {/* Hero Section */}
          <section className="px-16 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center p-10">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-[200px] font-bold mb-4">
                  Contact <br />
                  us! <br />
                </h1>
              </div>

              {/* SVG Character - Right */}
              {/* Top Right Bubble Decoration */}
              <div className="absolute right-0 top-0 z-0">
                <Image
                  src="/assets/contact/right_bubble.svg"
                  alt="Bubbles Decoration"
                  width={400}
                  height={400}
                  className="opacity-80"
                />
              </div>

              <div className="absolute right-[600px] top-[300px] animate-pulse-slow">
                <Image
                  src="/assets/contact/eyes.svg"
                  alt="Bubbles Decoration"
                  width={350}
                  height={350}
                />
              </div>
            </div>
          </section>
        </div>

        <div className="relative mt-[-250px] -bottom-[220px] h-[400px] overflow-hidden bg-transparent">
          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 rotate-[-3deg] w-full">
            <div className="flex animate-marquee w-max">
              {Array(2).fill(0).map((_, i) => (
                <div key={i} className="flex text-white text-4xl font-bold bg-[#231F20] px-4 py-6">
                  {Array(30).fill(" ✦ DIBILABS ").map((text, index) => (
                    <span key={index} className="px-1 whitespace-nowrap">{text}</span>
                  ))}
                </div>
              ))}
            </div>
          </div>
        </div>

        <div className="relative mt-[-250px] -bottom-[200px] h-[400px] overflow-hidden bg-transparent">
          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 rotate-[-3deg] w-full">
            <div className="flex animate-marquee w-max">
              {Array(2).fill(0).map((_, i) => (
                <div key={i} className="flex text-white text-4xl font-bold bg-[#065097] px-4 py-6">
                  {Array(30).fill(" ✦ DIBILABS ").map((text, index) => (
                    <span key={index} className="px-1 whitespace-nowrap">{text}</span>
                  ))}
                </div>
              ))}
            </div>
          </div>
        </div>

      </div> 

      <div className="bg-orange-500 pb-[100px]"></div>
    </>
  );
}
