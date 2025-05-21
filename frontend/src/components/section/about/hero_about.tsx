import Image from "next/image";

export default function Hero_about() {
  return (
    <>
      <div className="bg-white text-orange-600 pt-24">
        <div className="">
          {/* Hero Section */}
          <section className="px-6 md:px-16 md:py-20 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center p-10">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-5xl md:text-[100px] font-bold">About</h1>
                <h1 className="text-6xl md:text-[128px] font-extrabold">
                  Dibilabs.id
                </h1>
                <h1 className="text-3xl md:mt-5 md:text-[70px] font-bold">
                  Marketing Agency
                </h1>
              </div>

              {/* SVG Character - Right */}
              {/* Top Right Bubble Decoration */}
              <div className="absolute right-0 top-8 z-0 w-[150px] md:w-[400px]">
                <div className="relative w-full aspect-square opacity-80">
                  <Image
                    src="/assets/about/right_bubble.svg"
                    alt="Bubbles Decoration"
                    fill
                    className="object-contain"
                  />
                </div>
              </div>
            </div>
          </section>

          {/* Description */}
          <section className="text-center py-10 px-4 bg-white">
            {/* Title */}
            <div className="flex items-center justify-center gap-10 mb-6">
              <div className="w-[60px] md:w-[100px] animate-wiggle">
              <div className="relative w-full aspect-square">
                <Image
                  src="/assets/about/star.svg"
                  alt="Heart left"
                  fill
                  className="object-contain"
                />
              </div>
            </div>
              <h2 className="text-4xl md:text-7xl text-black font-bold px-8 py-3">
                <span>How it all</span>
                <span className="ml-2 bg-orange-600 text-white rounded-md p-2 font-extrabold">
                  began
                </span>
              </h2>
              <div className="w-[60px] md:w-[100px] animate-wiggle">
                <div className="relative w-full aspect-square">
                  <Image
                    src="/assets/about/star.svg"
                    alt="Heart Right"
                    fill
                    className="object-contain"
                  />
                </div>
              </div>
            </div>

            <br />

            <div className="flex items-center justify-center text-black text-md md:text-2xl">
              <h3>
                From servicing our early adopters (community of SME’s managed by{" "}
                <br />
                Dibimbing.id) we saw the need of assistance within SME’s to
                digitize <br />
                and automotae their whole business process. <br />
                <br />
                We listen carefully to the different and specific needs of each
                of our <br />
                partners to provide the solution taiolerd to their business
                objectives.
              </h3>
            </div>
          </section>

        </div>
      </div>
    </>
  );
}
