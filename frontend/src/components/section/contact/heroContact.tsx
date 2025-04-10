import Image from "next/image";

export default function HeroContact() {
  return (
    <>
      <div className="bg-white text-orange-600 pb-[300px]">
        <div className="container mx-auto px-4">
          {/* Hero Section */}
          <section className="px-6 md:px-16 py-32 md:py-32 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center p-10">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-7xl md:text-9xl font-bold mb-4">
                  Contact <br />
                  us! <br />
                </h1>
              </div>

              {/* SVG Character - Right */}
              {/* Top Right Bubble Decoration */}
              <div className="absolute right-0 top-16 z-0">
                <Image
                  src="/assets/contact/right_bubble.svg"
                  alt="Bubbles Decoration"
                  width={300}
                  height={300}
                  className="opacity-80"
                />
              </div>

              <div className="absolute right-[500px] top-[250px]">
                <Image
                  src="/assets/contact/eyes.svg"
                  alt="Bubbles Decoration"
                  width={300}
                  height={300}
                />
              </div>
            </div>
          </section>
        </div>

        {/* Top white pattern */}
        <div className="w-full absolute -bottom-32 left-0">
          <Image
            src="/assets/contact/pattern_top.svg" // replace with your image path
            alt="Top Divider"
            width={1600}
            height={100}
            className="w-full object-cover"
          />
        </div>

        {/* Bottom orange pattern */}
        <div className="w-full absolute -bottom-[250px] left-0">
          <Image
            src="/assets/contact/pattern_bottom.svg" // replace with your image path
            alt="Bottom Divider"
            width={1600}
            height={100}
            className="w-full object-cover"
          />
        </div>
      </div>

      <div className="bg-orange-500 pb-[300px]"></div>
    </>
  );
}
