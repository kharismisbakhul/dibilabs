import Image from "next/image";
import { ArrowRight } from "lucide-react";

export default function Hero() {
  return (
    <>
      <div className="bg-orange-500 text-white">
        <div className="container mx-auto px-4">
          {/* Hero Section */}
          <section className="px-6 md:px-16 py-12 md:py-20 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-4xl md:text-6xl font-extrabold mb-2">
                  Dibilabs.id
                </h1>
                <p className="text-lg md:text-xl mb-6 font-medium">
                  Dibilabs.id Digital Marketing Agency
                </p>
                <p className="text-4xl md:text-4xl font-light leading-snug mb-6">
                  The creative <span className="font-bold">formulators</span>,{" "}
                  <br />
                  driven to <span className="font-bold">
                    experiment
                  </span> and <br />
                  deliver{" "}
                  <span className="font-bold">beyond expectations!</span>
                </p>
                <div className="flex items-center gap-4 mb-6">
                  <p className="text-lg font-light m-0">
                    Navigate the Digital Ecosystem with Dibilabs.id!
                  </p>
                  <button className="bg-white text-black px-6 py-3 rounded-full flex items-center gap-2 font-semibold">
                    Grow Together <ArrowRight className="w-5 h-5" />
                  </button>
                </div>
              </div>

              {/* SVG Character - Right */}
              <div className="relative w-full max-w-md mx-auto aspect-[4/5] order-1 md:order-2">
                <Image
                  src="/assets/homepage/beaker.png"
                  alt="Beaker Mascot"
                  fill
                  className="object-contain"
                  sizes="(max-width: 768px) 100vw, 400px"
                />
              </div>
            </div>
          </section>
        </div>
      </div>

      {/* Bottom Wavy Edge */}
      <div className="relative">
        {/* Bottom wave */}
        <div className="block bottom-0 left-0 w-full overflow-hidden leading-[0] z-10">
          <div className="flex justify-between w-full">
            {Array.from({ length: 10 }).map((_, i) => (
              <div
                key={i}
                className="w-[10vw] h-[5vw] bg-orange-500 rounded-b-full"
              />
            ))}
          </div>
        </div>
      </div>
    </>
  );
}
