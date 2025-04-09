import Image from "next/image";

export default function Hero_about() {
  return (
    <>
      <div className="bg-white text-orange-600">
        <div className="container mx-auto px-4">
          {/* Hero Section */}
          <section className="px-6 md:px-16 py-12 md:py-20 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center p-10">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-3xl md:text-5xl font-bold mb-2">About</h1>
                <h1 className="text-4xl md:text-6xl font-extrabold mb-2">
                  Dibilabs.id
                </h1>
                <h1 className="text-2xl md:text-4xl font-bold mb-2">
                  Marketing Agency
                </h1>
              </div>

              {/* SVG Character - Right */}
              {/* Top Right Bubble Decoration */}
              <div className="absolute right-0 top-16 z-0">
                <Image
                  src="/assets/about/right_bubble.svg"
                  alt="Bubbles Decoration"
                  width={200}
                  height={200}
                  className="opacity-80"
                />
              </div>
            </div>
          </section>

          {/* Description */}
          <section className="text-center py-10 px-4 bg-white">
            {/* Title */}
            <div className="flex items-center justify-center gap-10 mb-6">
              <Image
                src="/assets/about/star.svg"
                alt="Heart left"
                width={100}
                height={100}
              />
              <h2 className="text-6xl text-black font-bold px-8 py-3">
                How it all{" "}
                <span className="bg-orange-600 text-white rounded-md p-2 font-extrabold">
                  began
                </span>
              </h2>
              <Image
                src="/assets/about/star.svg"
                alt="Heart right"
                width={100}
                height={100}
              />
            </div>

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
