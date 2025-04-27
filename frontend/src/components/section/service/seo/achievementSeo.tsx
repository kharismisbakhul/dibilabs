import Image from "next/image";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function AchievementSeo({ data }: Props) {
  return (
    <>
      <section className="bg-white py-12 px-4 md:px-16 lg:px-24 relative overflow-hidden">

        <div className="flex flex-wrap justify-center gap-10 mt-16 z-10 relative">
          {/* Block Item */}

          {[
            {
              color: "bg-orange-500",
              text1: "Proven",
              text2: "to Achieve",
              image: "/assets/service/seo/flask_orange_triangle.svg",
              alt: "Revenue Icon",
            },
            {
              color: "bg-black",
              text1: "400K",
              text2: "Website Organic Traffic Growth within 3 months",
              image: "/assets/service/seo/flask_black_circle.svg",
              alt: "Traffic Icon",
            },
            {
              color: "bg-blue-700",
              text1: "#1",
              text2: "Driven Revenue Growth",
              image: "/assets/service/seo/flask_blue_triangle.svg",
              alt: "ROAS Icon",
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
