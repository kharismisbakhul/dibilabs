import Image from "next/image";

export default function Services() {
  return (
    <>
      {/* Services */}
      <section className="relative bg-white">
        {/* Top Bubbles */}
        <Image
          src="/assets/homepage/left_bubble_white.svg"
          alt="Bubble"
          width={200}
          height={200}
          className="absolute top-0 left-0 z-30"
        />

        {/* Orange Section */}
        <div className="bg-orange-500 pt-[10vw] pb-[12vw] py-6 px-6 text-white text-center relative">
          <h2 className="text-2xl md:text-3xl">
            We offer a wide array of services to assist <br />
            your <span className="font-extrabold text-4xl">Digital Marketing Journey</span>
          </h2>
          <Image
            src="/assets/homepage/right_bubble_white.svg"
            alt="Bubble"
            width={120}
            height={120}
            className="absolute bottom-4 right-4 z-10"
          />
        </div>

        {/* Black Cards Section */}
        <div className="bg-orange-500">
          <div className="bg-black rounded-t-[60px] py-14 px-4 md:px-10 text-white text-center relative z-10 pb-[200px]">
            <div className="container mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
              {[
                {
                  title: "Creative, Marketing, & Communication",
                  desc: "Brand and marketing services, from social media, creative campaigns, to performance marketing. Be a part of the growing list of our partners success stories",
                  icon: "/assets/homepage/icon-left.svg",
                },
                {
                  title: "Digital Infrastructure Solutions",
                  desc: "From wordpress based website development, e-commerce store, custom LMS, CMS, ERP, web application, or software, we got you covered for your businesses digital infrastructures.",
                  icon: "/assets/homepage/icon-center.svg",
                },
                {
                  title: "Strategic Business Laboratory",
                  desc: "Learn insights, open new market, strategise new market strategies by our digital laboratory. We help you do your research from UI/UX, market research, professional consulting, and tailored training for your custom company needs.",
                  icon: "/assets/homepage/icon-right.svg",
                },
              ].map((service, idx) => (
                <div
                  key={idx}
                  className="bg-white text-black rounded-2xl shadow-md p-6 flex flex-col items-center relative mt-6"
                >
                  <div className="absolute -top-14 left-1/2 transform -translate-x-1/2">
                    <Image
                      src={service.icon}
                      alt="Icon"
                      width={200}
                      height={200}
                      className="z-30"
                    />
                  </div>
                  <Image
                    src={service.icon}
                    alt="Icon"
                    width={120}
                    height={120}
                    className="opacity-0"
                  />
                  <h3 className="mt-4 text-lg font-bold text-center text-orange-500">
                    {service.title}
                  </h3>
                  <p className="text-sm text-center mt-2">{service.desc}</p>
                  <button className="mt-4 px-4 py-2 bg-blue-500 text-white rounded-full text-sm">
                    Learn more →
                  </button>
                </div>
              ))}
            </div>
          </div>
        </div>
      </section>
    </>
  );
}
