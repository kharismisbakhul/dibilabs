import Image from "next/image";

export default function Hero_service() {
  return (
    <>
      <div className="bg-white text-orange-600 pt-24">
        <div className="">
          {/* Hero Section */}
          <section className="px-6 md:px-16 py-12 md:py-20 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center p-10">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-8xl font-bold mb-4">Services</h1>
                <h1 className="text-8xl font-bold mb-4">
                  That Impacts
                </h1>
                <h1 className="text-8xl font-bold mb-4">
                  Your Business
                </h1>
              </div>

              {/* SVG Character - Right */}
              {/* Top Right Bubble Decoration */}
              <div className="absolute right-0 top-3 z-0">
                <Image
                  src="/assets/service/right_bubble.svg"
                  alt="Bubbles Decoration"
                  width={300}
                  height={300}
                  className="opacity-80"
                />
              </div>
            </div>
          </section>

        </div>
      </div>
    </>
  );
}
