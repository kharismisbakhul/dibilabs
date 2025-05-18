import { Articles } from "@/types/json/articles";
import Image from "next/image";

type Props = {
  data: Articles[]; // or Record<string, any>[]
};

export default function NewestArticle({ data }: Props) {
  const headerArticle = data[0];
  const dateString = headerArticle.published;
  const date = new Date(dateString);

  // Format options
  const options: Intl.DateTimeFormatOptions = { year: 'numeric', month: 'long', day: 'numeric' };
  const formattedDate = date.toLocaleDateString('en-US', options);

  // const headerArticle = data.shift();
  // data.shift();
  // console.log(headerArticle)
  // data.map(article => console.log(article))

  const articles = [data[1], data[2]];
  return (
    <>
      <section className="font-sans">
        {/* Top Banner */}
        <div className="container mx-auto px-4">
          <div className="bg-white px-6 py-4">
            <div className="flex items-center w-full">
              {/* Left Title */}
              <h2 className="text-[100px] font-extrabold text-blue-800 whitespace-nowrap">
                NEWS & BLOG
              </h2>

              {/* Horizontal Orange Border from center to right */}
              <div className="flex-grow h-[4px] bg-orange-500 ml-6"></div>
            </div>
          </div>
        </div>

        {/* Newest Article */}
        <div className="grid grid-cols-1 md:grid-cols-2 bg-orange-500 text-white px-6 md:px-16 pt-12 relative">
          {/* Left - Image */}
          <div className="container mx-auto px-14">
            <h3 className="text-[120px] leading-none font-extrabold">
              Newest <br />
              Article
            </h3>
          </div>
          <br />
          <div className="z-40 flex justify-center items-center">
            <Image
              src="/assets/article/computer.svg"
              alt="Computer"
              width={300}
              height={300}
              className="opacity-0"
            />
            <Image
              src="/assets/article/computer.svg"
              alt="Computer"
              width={700}
              height={700}
              className="absolute top-[250px] left-0"
            />
            <p className="absolute text-2xl text-white right-20 top-10 text-right">
              {/* August 29, 2024 */}
              {formattedDate}
            </p>
          </div>

          {/* Right - Text */}
          <div className="flex flex-col justify-left gap-4 left-0">
            <h4 className="text-5xl font-semibold leading-snug">
              {/* Efektif Buat Dicoba! Ini <br />
              5 Jenis Brand Activation <br />
              untuk Bisnis */}
              {headerArticle.title}
            </h4>
            <p className="text-2xl text-white leading-relaxed">
              {/* Brand activation jadi strategi marketing <br />
              yang populer. Tapi tau gak sih kalau <br />
              brand activation ada banyak jenisnya <br />
              Cek 5 jenisnya... */}
              {headerArticle.content[0].children[0].text}
            </p>
          </div>

          {/* Background Accent */}
          <div className="absolute bottom-[-100px] right-[-36px] scale-75 hidden md:block z-20">
            <Image
              src="/assets/article/sharp.svg"
              alt="accent"
              width={200}
              height={200}
            />
          </div>
        </div>

        {/* Section 2 */}
        <div className="bg-black text-white px-6 md:px-16 pt-[350px] pb-24 z-30 relative">
          <button className="bg-[#065097] text-white px-10 py-2 font-bold rounded-full w-fit flex items-center gap-2 mt-2 absolute right-[100px] top-[50px] text-2xl">
            Explore More →
          </button>
          <div className="flex flex-col md:flex-row items-center justify-between mb-12">
            <h3 className="text-[32px] md:text-[80px] font-extrabold leading-tight">
              Find out how we <br /> do it in{" "}
              <span className="text-white font-black">5 minutes</span>
            </h3>
            <div className="mt-4 md:mt-0 animate-pulse-slow">
              <Image
                src="/assets/article/eyes.svg"
                alt="eyes"
                width={250}
                height={250}
              />
            </div>
          </div>

          {/* Articles */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 relative z-40">

            {articles.map((article, idx) => (
              <div key={idx} className="bg-white rounded-lg overflow-hidden shadow-md flex flex-col h-full">
              <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${article.image.url}`}
                alt={article.image.name}
                width={500}
                height={400}
                className="w-full h-auto"
              />
              <div className="bg-orange-500 text-white p-4 flex flex-col flex-grow">
                <h4 className="font-semibold text-2xl mb-2">{article.title}</h4>
                <p className="text-base text-black mb-4">{article.content[0].children[0].text}</p>
                
                {/* Stick to bottom */}
                <div className="font-bold text-right mt-auto text-xl">
                  Read More →
                </div>
              </div>

            </div>
            ))}

          </div>
          {/* Background Accent */}
          <div className="absolute bottom-[-90px] left-[-36px] scale-75 hidden md:block z-35">
            <Image
              src="/assets/article/sharp2.svg"
              alt="accent"
              width={300}
              height={300}
            />
          </div>
        </div>
      </section>
    </>
  );
}
