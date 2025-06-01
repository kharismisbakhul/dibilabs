import Image from "next/image";
import Link from "next/link";

export default function HeroSoftware() {
  return (
    <>
      <section className="bg-white pt-24">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-10 md:px-16 py-16 md:py-24 flex flex-col md:flex-row items-left justify-between max-w-[1600px] mx-auto mt-5 relative overflow-hidden">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0">
            <h2 className="text-5xl font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-4xl md:text-7xl">Seamless Digital <br />
              Experience with <br />
              Intelligent Design</span>
            </h2>
            <br />
            <p className="mt-4 text-lg md:text-3xl text-gray-200">
            By blending user psychology, data-driven <br />
            insights, and customized strategies, we <br />
            craft digital experiences that feel effortless, <br />
            perform flawlessly, and adapt to your <br />
            unique needs.
            </p>
            <br />
            <Link 
              href="https://wa.me/6281234567890?text=Halo%20tim%20Dibilabs%20,%20Saya%20tertarik%20untuk%20konsultasi"
              target="_blank"
              rel="noopener noreferrer"
              >
              <button className="bg-[#065097] text-white font-medium text-lg md:text-xl px-6 mr-8 py-2 rounded-full flex items-center gap-2 transition">
                Consultation Here →
              </button>
            </Link>
          </div>
          {/* Image */}
          <div className="">
            <Image
              src="/assets/service/software/hero.svg" // Replace with your actual asset path
              alt="Payday Sale"
              width={0}
              height={0}
              priority
              className="right-0 bottom-0 absolute w-[280px] md:w-[700px] h-auto"
            />
          </div>
        </div>
      </section>
    </>
  );
}
