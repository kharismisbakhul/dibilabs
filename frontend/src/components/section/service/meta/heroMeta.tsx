import Image from "next/image";
import Link from "next/link";

export default function HeroMeta() {
  return (
    <>
      <section className="bg-white pt-20 md:pt-24">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-10 md:px-16 py-16 md:py-24 flex flex-col md:flex-col items-left justify-between max-w-[1600px] mx-auto mt-5 relative overflow-hidden">
          {/* Text */}
          <div className="w-full md:w-1/2 mb-6 md:mb-0">
            <h2 className="font-semibold leading-tight">
              <span className="text-[#F97316] font-bold text-4xl md:text-7xl">
                Your Vision, Our <br />
                Precise Execution, <br />
                Shared Success. 
              </span>
            </h2>
            <br />
            <p className="mt-4 text-lg md:text-3xl text-gray-200">
              Big ideas need smart execution. Our data-driven <br className="hidden md:block" />
              precision and creative agility team turn your vision <br className="hidden md:block" />
              into measurable results that keep growing.
            </p>
            <br />
            <Link 
              href="https://wa.me/6281234567890?text=Halo%20tim%20Dibilabs%20,%20Saya%20tertarik%20untuk%20konsultasi"
              target="_blank"
              rel="noopener noreferrer"
              >
              <button className="bg-[#065097] text-white font-medium text-base md:text-xl px-6 mr-8 py-2 rounded-full flex items-center gap-2 transition">
                Consultation Here →
              </button>
            </Link>
          </div>
          {/* Image */}
          <div className="w-full h-auto">
            <Image
              src="/assets/service/meta/hero.svg"
              alt="Payday Sale"
              width={0}
              height={0}
              priority
              className="absolute right-0 bottom-0 w-[150px] md:w-[500px] h-auto"
            />
          </div>
        </div>
      </section>
    </>
  );
}
