import Image from "next/image";

export default function Achievements() {
  return (
    <>
      <section className="bg-white py-12 px-4 md:px-16 lg:px-24 relative overflow-hidden">
        {/* Top Right Bubble Decoration */}
        <div className="absolute right-0 top-0 z-0">
          <Image
            src="/assets/homepage/right_bubble.svg"
            alt="Bubbles Decoration"
            width={180}
            height={180}
            className="opacity-80"
          />
        </div>

        <div className="text-center z-10 relative text-orange-600">
          <h2 className="text-3xl md:text-4xl ">
            Our Partners <span className="font-bold">Achievements</span>,
          </h2>
          <p className="text-3xl md:text-4xl mt-2">
            a Testament to <span className="font-bold">Our Excellence</span>.
          </p>
        </div>

        <div className="flex flex-wrap justify-center gap-10 mt-16 z-10 relative">
          {/* Block Item */}

          {[
            {
              color: "bg-orange-500",
              text1: "2000%",
              text2: "Revenue Growth",
              image: "/assets/homepage/flask_orange_triangle.svg",
              alt: "Revenue Icon",
            },
            {
              color: "bg-black",
              text1: "5000K+",
              text2: "Organic Website Traffic",
              image: "/assets/homepage/flask_black_circle.svg",
              alt: "Traffic Icon",
            },
            {
              color: "bg-blue-700",
              text1: "10–50x",
              text2: "Achieved ROAS",
              image: "/assets/homepage/flask_blue_triangle.svg",
              alt: "ROAS Icon",
            },
            {
              color: "bg-orange-500",
              text1: "11K%",
              text2: "Social Media Followers Growth",
              image: "/assets/homepage/flask_orange_circle.svg",
              alt: "Social Icon",
            },
            {
              color: "bg-black",
              text1: "100+",
              text2: "Impacted Clients",
              image: "/assets/homepage/flask_black_triangle.svg",
              alt: "Clients Icon",
            },
            {
              color: "bg-blue-700",
              text1: "5+",
              text2: "Years of Digital Marketing Experience",
              image: "/assets/homepage/flask_blue_circle.svg",
              alt: "Experience Icon",
            },
          ].map((item, index) => (
            <div key={index} className="flex flex-col items-center w-40">
              <div
                className={`${item.color} text-white rounded-full w-28 h-28 flex flex-col justify-center items-center text-center p-2`}
              >
                <span className="text-lg font-bold">{item.text1}</span>
                <span className="text-xs">{item.text2}</span>
              </div>
              <Image
                src={item.image}
                alt={item.alt}
                width={80}
                height={80}
                className="mt-4"
              />
            </div>
          ))}
        </div>
      </section>
    </>
  );
}
