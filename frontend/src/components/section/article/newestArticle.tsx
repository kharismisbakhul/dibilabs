import Image from "next/image";

export default function NewestArticle() {
  return (
    <>
      <section className="font-sans">
        {/* Top Banner */}
        <div className="container mx-auto px-4">
          <div className="bg-white px-6 py-4">
            <div className="flex items-center w-full">
              {/* Left Title */}
              <h2 className="text-[60px] font-extrabold text-blue-800 whitespace-nowrap">
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
            <h3 className="text-[72px] leading-none font-extrabold">
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
              className="absolute top-[90px] left-0"
            />
            <p className="absolute text-lg text-white right-20 top-10 text-right">
              August 29, 2024
            </p>
          </div>

          {/* Right - Text */}
          <div className="flex flex-col justify-center gap-4">
            <h4 className="text-3xl md:text-3xl font-semibold leading-snug">
              Efektif Buat Dicoba! Ini <br />
              5 Jenis Brand Activation <br /> 
              untuk Bisnis
            </h4>
            <p className="text-xl text-white leading-relaxed">
              Brand activation jadi strategi marketing <br />
              yang populer. Tapi tau gak sih kalau <br />
              brand activation ada banyak jenisnya <br /> 
              Cek 5 jenisnya...
            </p>
            <button className="bg-blue-500 text-white px-5 py-2 font-bold rounded-full w-fit flex items-center gap-2 mt-2 absolute right-[100px] -bottom-[120px]">
              Explore More
              <span className="text-lg">→</span>
            </button>
          </div>

          {/* Background Accent */}
          <div className="absolute bottom-[-150px] right-[-36px] scale-75 hidden md:block z-20">
            <Image
              src="/assets/article/sharp.svg"
              alt="accent"
              width={300}
              height={300}
            />
          </div>
        </div>

        {/* Section 2 */}
        <div className="bg-black text-white px-6 md:px-16 pt-[350px] pb-24 z-30 relative">
          <div className="flex flex-col md:flex-row items-center justify-between mb-12">
            <h3 className="text-[32px] md:text-[80px] font-extrabold leading-tight">
              Find out how we <br/> do it in{" "}
              <span className="text-white font-black">5 minutes</span>
            </h3>
            <div className="mt-4 md:mt-0">
              <Image
                src="/assets/article/eyes.svg"
                alt="eyes"
                width={200}
                height={200}
              />
            </div>
          </div>

          {/* Articles */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 relative z-40">
            {/* Card 1 */}
            <div className="bg-white rounded-lg overflow-hidden shadow-md">
              <Image
                src="/assets/article/article1.png"
                alt="E-commerce"
                width={500}
                height={400}
                className="w-full h-auto"
              />
              <div className="bg-orange-500 text-white p-4">
                {/* <p className="text-xs mb-1">All Article</p> */}
                <h4 className="font-semibold text-xl mb-2">
                  5 Manfaat E-Commerce yang Bikin <br />
                  Brand dan Konsumen Untung,<br />
                  Penasaran?
                </h4>
                <p className="text-xs text-black mb-4">
                  E-commerce udah jadi strategi andalan buat para brand. Tapi <br />
                  sebenernya apa aja sih manfaat e-commerce? Cek disini <br />
                  Buddies!
                </p>
                <div className="font-bold text-right">
                  Read More <span className="text-base ml-1">→</span>
                </div>
              </div>
            </div>

            {/* Card 2 */}
            <div className="bg-white rounded-lg overflow-hidden shadow-md">
              <Image
                src="/assets/article/article2.png"
                alt="Loyalty Program"
                width={500}
                height={400}
                className="w-full h-auto"
              />
              <div className="bg-orange-500 text-white p-4">
                {/* <p className="text-xs mb-1">All Article</p> */}
                <h4 className="font-semibold text-xl mb-2">
                  Kenalan dengan Loyalty Program, <br />
                  Kode Cheat Buat Bikin Bisnis <br />
                  Sukses Jangka Panjang
                </h4>
                <p className="text-xs text-black mb-4">
                  E-commerce udah jadi strategi andalan buat para brand. Tapi <br />
                  sebenernya apa aja sih manfaat e-commerce? Cek disini <br />
                  Buddies!
                </p>
                <div className="font-bold text-right">
                  Read More <span className="text-base ml-1">→</span>
                </div>
              </div>
            </div>



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
