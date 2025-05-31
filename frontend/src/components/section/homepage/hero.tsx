import Image from "next/image";
import { ArrowRight } from "lucide-react";
import Link from "next/link";

export default function Hero() {
  return (
    <>
      <div className="bg-orange-500 text-white pt-24">
        <div className="">
          {/* Hero Section */}
          <section className="text-center md:text-left px-6 md:px-16 py-12 md:py-20 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center md:items-left">
              {/* Text Content - Left */}
              <div className="order-1 md:order-1">
                <h1 className="text-6xl md:text-8xl font-extrabold mb-2">
                  Dibilabs.id
                </h1>
                <p className="text-2xl md:text-3xl mb-6 font-medium">
                  Dibilabs.id Digital Marketing Agency
                </p>
                <p className="text-3xl md:text-5xl font-light leading-snug mb-6">
                  The creative <span className="font-bold">formulators</span>,{" "}
                  <br />
                  driven to <span className="font-bold">
                    experiment
                  </span> and <br />
                  deliver{" "}
                  <span className="font-bold">beyond expectations!</span>
                </p>
                {/* Button & Text Row */}
                <div className="w-full flex flex-col sm:flex-row sm:justify-between gap-4 text-center sm:text-left">
                  <p className="text-xl lg:text-3xl font-light m-0 flex-1 whitespace-nowrap">
                    Navigate the Digital Ecosystem with Dibilabs.id!
                  </p>
                  <Link href="#footer" className="shrink-0 sm:self-auto self-center">
                    <button className="bg-white text-black px-6 py-3 rounded-full flex items-center gap-2 font-semibold hover:bg-black hover:text-white whitespace-nowrap">
                      Grow Together <ArrowRight className="w-5 h-5" />
                    </button>
                  </Link>
                </div>

              </div>

              {/* SVG Character - Right */}
              <div className="relative hidden md:block max-w-md mx-auto aspect-[4/5] order-1 animate-pulse-slow w-[300px] md:w-[500px]">
                <Image
                  src="/assets/homepage/beaker.png"
                  alt="Beaker Mascot"
                  fill
                  className="object-contain"
                  sizes="(max-width: 768px) 100vw, 500px"
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
