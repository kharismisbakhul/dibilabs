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
                <h1 className="text-[100px] font-bold">About</h1>
                <h1 className="text-[128px] font-extrabold">
                  Dibilabs.id
                </h1>
                <h1 className="text-[70px] font-bold">
                  Marketing Agency
                </h1>
              </div>

              {/* SVG Character - Right */}
              {/* Top Right Bubble Decoration */}
              <div className="absolute right-0 top-8 z-0">
                <Image
                  src="/assets/about/right_bubble.svg"
                  alt="Bubbles Decoration"
                  width={300}
                  height={300}
                  className="opacity-80"
                />
              </div>
            </div>
          </section>

          {/* Description */}
          <section className="text-center py-10 px-4 bg-white">
            {/* Title */}
            <div className="flex items-center justify-center gap-10 mb-6">
              <div className="animate-wiggle">
                <Image
                  src="/assets/about/star.svg"
                  alt="Heart left"
                  width={100}
                  height={100}
                />
              </div>
              <h2 className="text-7xl text-black font-bold px-8 py-3">
                How it all{" "}
                <span className="bg-orange-600 text-white rounded-md p-2 font-extrabold">
                  began
                </span>
              </h2>
              <div className="animate-wiggle">
                <Image
                  src="/assets/about/star.svg"
                  alt="Heart right"
                  width={100}
                  height={100}
                />
              </div>
            </div>

            <br />

            <div className="flex items-center justify-center text-black text-2xl">
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
