import Image from "next/image";
import Link from "next/link";

export default function HeroSosmed() {
  return (
    <>
      <section className="bg-white pt-20 md:pt-24">
        {/* Top Section */}
        <div className="bg-black rounded-[24px] text-white px-10 pr-32 md:px-16 py-16 md:py-16 flex flex-col md:flex-row items-left justify-between max-w-[1600px] mx-auto mt-5 relative overflow-hidden">
          {/* Text */}
          <div className="md:w-1/2 mb-6 md:mb-0 md:mt-[100px]">
            <h2 className="text-2xl md:text-5xl font-semibold leading-tight">
              From <span className="text-[#F97316] font-bold text-4xl md:text-7xl">Visibility</span>{" "}
              <br /> to{" "}
              <span className="text-[#F97316] font-bold text-4xl md:text-7xl">Virality</span>
            </h2>
            <br />
            <p className="mt-4 text-lg md:text-3xl text-gray-200">
              We engineer social media success through <br className="hidden md:block" />
              engaging storytelling, data-backed content, <br className="hidden md:block" />
              and platform-specific tactics, turning brand <br className="hidden md:block" />
              awareness into real engagement and loyal <br className="hidden md:block" /> 
              audiences.
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
          <div className="absolute right-0 bottom-12 md:bottom-12 w-[150px] md:w-[500px] h-[240px] md:h-[600px] mx-auto">
            <Image
              src="/assets/service/sosmed/sale.png"
              alt="Payday Sale"
              fill
              priority
              sizes="(max-width: 768px) 150px, 500px"
              className="object-contain rounded-md"
              style={{
                position: 'absolute',
                right: 0,
                bottom: '100px'
              }}
            />
          </div>
        </div>
      </section>
    </>
  );
}
