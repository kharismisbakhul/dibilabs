import Image from "next/image";

export default function Vission_mission() {
  return (
    <>
      <section className="relative bg-[#231F20] text-white py-20">
        {/* Vision & Mission */}
        <div className="max-w-6xl mx-auto flex flex-col md:flex-row justify-center item-center gap-16 mb-32 px-4 text-center">
          {/* Vision */}
          <div className="text-center flex-1 flex flex-col items-center">
            <div className="relative inline-block animate-float">
              <Image
                src="/assets/about/vision.svg" // replace with your image path
                alt="Vision"
                width={300}
                height={300}
                className="w-[200px] md:w-[300px] h-auto mx-auto"
              />
            </div>
            <div className="mt-6">
              <h3 className="text-orange-500 font-bold text-4xl md:text-5xl bg-white inline-block px-7 py-4 rounded-full">
                Vision
              </h3>
              <p className="mt-4 mx-auto leading-relaxed text-2xl md:text-3xl">
                Become South East Asia’s #1 Agency <br />
                assisting corporates and SMEs in <br /> 
                their 360 digital marketing activity <br />
                and strategy.
              </p>
            </div>
          </div>

          {/* Mission */}
          <div className="text-center flex-1 flex flex-col items-center">
            <div className="relative inline-block animate-float">
              <Image
                src="/assets/about/mission.svg"
                alt="Mission"
                width={300}
                height={300}
                className="w-[200px] md:w-[300px] h-auto mx-auto"
              />
            </div>
            <div className="mt-6">
              <h3 className="text-orange-500 font-bold text-4xl md:text-5xl bg-white inline-block px-7 py-4 rounded-full">
                Mission
              </h3>
              <p className="mt-4 mx-auto leading-relaxed text-2xl md:text-3xl">
                Assist 1000 Indonesian SMEs in <br />
                achieving their business goals <br />
                through digital marketing and <br />
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
            <div className="flex animate-marquee w-max">
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
