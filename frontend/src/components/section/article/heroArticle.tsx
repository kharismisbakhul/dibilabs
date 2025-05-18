import Image from "next/image";

export default function HeroArticle() {
  return (
    <>
      <div className="bg-white text-orange-600">
        <div className="">
          {/* Hero Section */}
          <section className="px-6 md:px-16 py-12 md:py-20 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center p-10">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-9xl md:text-[150px] font-bold mb-4">Bitesize <br />
                Digital <br />
                Insights </h1>
              </div>

              {/* SVG Character - Right */}
              {/* Top Right Bubble Decoration */}
              <div className="absolute right-0 top-5 z-0">
                <Image
                  src="/assets/article/right_bubble.svg"
                  alt="Bubbles Decoration"
                  width={400}
                  height={400}
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
