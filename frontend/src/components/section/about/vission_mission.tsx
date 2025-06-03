import Image from "next/image";

export default function Vission_mission() {
  return (
    <>
      <section className="relative bg-[#231F20] text-white py-20">
        {/* Vision & Mission */}
        <div className="max-w-6xl mx-auto flex flex-col md:flex-row justify-center item-center gap-16 mb-32 px-4 text-center">
          {/* Vision */}
          <div className="text-center flex-1 flex flex-col items-center">
            <div className="relative inline-block animate-float aspect-[1/1] w-[200px] md:w-[300px]">
              <Image
                src="/assets/about/vision.svg"
                alt="Vision"
                fill
                className="object-contain"
                sizes="(max-width: 768px) 200px, 300px"
              />
            </div>
            <div className="mt-6">
              <p className="text-orange-500 font-bold text-3xl md:text-5xl bg-white inline-block px-7 py-3 md:px-7 md:py-4 rounded-full">
                Vision
              </p>
              <p className="mt-4 mx-auto leading-relaxed text-xl md:text-3xl px-4 md:px-0">
                Become South East Asia’s #1 Agency <br className="hidden md:block" />
                assisting corporates and SMEs in <br className="hidden md:block" /> 
                their 360 digital marketing activity <br className="hidden md:block" />
                and strategy.
              </p>
            </div>
          </div>

          {/* Mission */}
          <div className="text-center flex-1 flex flex-col items-center">
            <div className="relative inline-block animate-float aspect-[1/1] w-[200px] md:w-[300px]">
              <Image
                src="/assets/about/mission.svg"
                alt="Mission"
                fill
                className="object-contain"
                sizes="(max-width: 768px) 200px, 300px"
              />
            </div>
            <div className="mt-6">
              <p className="text-orange-500 font-bold text-3xl md:text-5xl bg-white inline-block px-7 py-3 md:px-7 md:py-4 rounded-full">
                Mission
              </p>
              <p className="mt-4 mx-auto leading-relaxed text-xl md:text-3xl px-4 md:px-0">
                Assist 1000 Indonesian SMEs in <br className="hidden md:block" />
                achieving their business goals <br className="hidden md:block" />
                through digital marketing and <br className="hidden md:block" />
                digital transitions.
              </p>
            </div>
          </div>

        </div>
        <br /><br /><br />

        <div className="relative mt-[-600px] -bottom-[370px] h-[400px] overflow-hidden bg-transparent">
          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 rotate-[-3deg] w-full">
            <div className="flex animate-marquee w-max">
              {Array(2).fill(0).map((_, i) => (
                <div key={i} className="flex text-white text-2xl md:text-4xl font-bold bg-[#231F20] px-4 py-6">
                  {Array(30).fill(" ✦ DIBILABS ").map((text, index) => (
                    <span key={index} className="px-1 whitespace-nowrap">{text}</span>
                  ))}
                </div>
              ))}
            </div>
          </div>
        </div>

        <div className="relative mt-[-250px] -bottom-[350px] h-[400px] overflow-hidden bg-transparent">
          <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 rotate-[-3deg] w-full">
            <div className="flex animate-marqueeR w-max">
              {Array(2).fill(0).map((_, i) => (
                <div key={i} className="flex text-white text-2xl md:text-4xl font-bold bg-[#F16923] px-4 py-6">
                  {Array(30).fill(" ✦ DIBILABS ").map((text, index) => (
                    <span key={index} className="px-1 whitespace-nowrap">{text}</span>
                  ))}
                </div>
              ))}
            </div>
          </div>
        </div>

      </section>
    </>
  );
}
