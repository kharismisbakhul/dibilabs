import Image from "next/image";

export default function Vission_mission() {
  return (
    <>
      <section className="relative bg-black text-white px-4 py-20">
        {/* Vision & Mission */}
        <div className="max-w-6xl mx-auto flex flex-col md:flex-row justify-center items-start gap-16 mb-[250px]">
          {/* Vision */}
          <div className="text-center flex-1">
            <div className="relative inline-block">
              <Image
                src="/assets/about/vision.svg" // replace with your image path
                alt="Vision"
                width={300}
                height={300}
                className="mx-auto"
              />
            </div>
            <div className="mt-6">
              <h3 className="text-orange-500 font-bold text-4xl bg-white inline-block px-7 py-4 rounded-full">
                Vision
              </h3>
              <p className="mt-4 mx-auto leading-relaxed text-2xl">
                Become South East Asia’s #1 Agency <br />
                assisting corporates and SMEs in <br /> 
                their 360 digital marketing activity <br />
                and strategy.
              </p>
            </div>
          </div>

          {/* Mission */}
          <div className="text-center flex-1">
            <div className="relative inline-block">
              <Image
                src="/assets/about/mission.svg" // replace with your image path
                alt="Mission"
                width={300}
                height={300}
                className="mx-auto"
              />
            </div>
            <div className="mt-6">
              <h3 className="text-orange-500 font-bold text-4xl bg-white inline-block px-7 py-4 rounded-full">
                Mission
              </h3>
              <p className="mt-4 mx-auto leading-relaxed text-2xl">
                Assist 1000 Indonesian SMEs in <br />
                achieving their business goals <br />
                through digital marketing and <br />
                digital transitions.
              </p>
            </div>
          </div>

        </div>
        <br /><br /><br />

        {/* Top white pattern */}
        <div className="w-full absolute -bottom-10 left-0">
          <Image
            src="/assets/about/pattern_top.svg" // replace with your image path
            alt="Top Divider"
            width={1600}
            height={100}
            className="w-full object-cover"
          />
        </div>

        {/* Bottom orange pattern */}
        <div className="w-full absolute -bottom-40 left-0">
          <Image
            src="/assets/about/pattern_bottom.svg" // replace with your image path
            alt="Bottom Divider"
            width={1600}
            height={100}
            className="w-full object-cover"
          />
        </div>
      </section>
    </>
  );
}
