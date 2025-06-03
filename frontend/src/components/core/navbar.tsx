'use client'

import Image from "next/image";

import { FaMeta, FaGoogle, FaShareNodes, FaMedapps, FaSearchengin, FaSitemap } from "react-icons/fa6";

import { useState } from "react";
import Link from "next/link";

export default function Navbar() {
  const [menuOpen, setMenuOpen] = useState(false);
  return (
    <>
      <div className="fixed top-0 left-0 w-full bg-orange-500 text-white shadow-md z-50">
        {/* Navbar */}
        <div className="">
          <nav className="flex items-center justify-between pr-10 py-4 w-full md:w-auto font-extrabold">
            <Link href="/homepage" scroll={false}>
              <div className="flex items-center space-x-2">
                <div className="relative w-[150px] h-[40px] md:w-[200px] md:h-[60px]">
                  <Image
                    src="/assets/core/logo2.png"
                    alt="Dibilabs Logo"
                    fill
                    sizes="(max-width: 768px) 200px, 160px"
                    className="object-contain"
                  />
                </div>
              </div>
            </Link>
            <ul className="hidden md:flex gap-20 font-medium text-lg">
              <li className="cursor-pointer px-2 py-1 rounded-md">
                <Link
                  href="/about"
                  className="transition-all duration-300 hover:underline"
                  scroll={false}
                >
                  About Us
                </Link>
              </li>
              <li className="relative group cursor-pointer px-2 py-1 rounded-md">
                <Link
                  href="/service"
                  className="transition-all duration-300 hover:underline flex items-center gap-1"
                  scroll={false}
                >
                  <span>
                    Services
                  </span>
                </Link>

                {/* Dropdown Menu */}
                <div className="absolute left-0 mt-5 w-[800px] bg-white border rounded-xl shadow-lg p-6 z-50 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300">
                  <div className="grid grid-cols-2 gap-6">
                    {/* Item 1 */}
                    <div className="flex gap-3">
                      <FaMeta className="text-orange-500 text-6xl mt-1" />
                      <div>
                        <Link
                          href="/service/meta"
                          className="font-semibold text-gray-900 hover:underline"
                          scroll={false}
                        >
                          Meta Ads
                        </Link>
                        <p className="text-gray-500 text-sm">
                          Big ideas need smart execution. Our data-driven
                          precision and creative agility team turn your vision
                          into measurable results that keep growing.
                        </p>
                      </div>
                    </div>

                    {/* Item 2 */}
                    <div className="flex gap-3">
                      <FaGoogle className="text-orange-500 text-6xl mt-1" />
                      <div>
                        <Link
                          href="/service/google"
                          className="font-semibold text-gray-900 hover:underline"
                          scroll={false}
                        >
                          Google Ads
                        </Link>
                        <p className="text-gray-500 text-sm">
                          Advertising without data leads to inefficient
                          spending, and declining performance. As a Google
                          Partner, we utilize smart bidding, advanced audience
                          insights, and precise targeting to maximize impact and
                          optimize every advertising investmen
                        </p>
                      </div>
                    </div>

                    {/* Item 3 */}
                    <div className="flex gap-3">
                      <FaShareNodes className="text-orange-500 text-6xl mt-1" />
                      <div>
                        <Link
                          href="/service/sosmed"
                          className="font-semibold text-gray-900 hover:underline"
                          scroll={false}
                        >
                          Social Media Management
                        </Link>
                        <p className="text-gray-500 text-sm">
                          We engineer social media success through engaging
                          storytelling, data-backed content, and
                          platform-specific tactics, turning brand awareness
                          into real engagement and loyal audiences.
                        </p>
                      </div>
                    </div>

                    {/* Item 4 */}
                    <div className="flex gap-3">
                      <FaSearchengin className="text-orange-500 text-6xl mt-1" />
                      <div>
                        <Link
                          href="/service/seo"
                          className="font-semibold text-gray-900 hover:underline"
                          scroll={false}
                        >
                          Search Engine Optimization Service
                        </Link>
                        <p className="text-gray-500 text-sm">
                          Our strategic approach ensures long-term visibility,
                          transforming organic traffic into sustainable business
                          growth with content that ranks, shines, and converts.
                        </p>
                      </div>
                    </div>

                    {/* Item 5 */}
                    <div className="flex gap-3">
                      <FaMedapps className="text-orange-500 text-6xl mt-1" />
                      <div>
                        <Link
                          href="/service/software"
                          className="font-semibold text-gray-900 hover:underline"
                          scroll={false}
                        >
                          Software and Web App Development
                        </Link>
                        <p className="text-gray-500 text-sm">
                          By blending user psychology, data-driven insights, and
                          customized strategies, we craft digital experiences
                          that feel effortless, perform flawlessly, and adapt to
                          your unique needs.
                        </p>
                      </div>
                    </div>

                    {/* Item 6 */}
                    <div className="flex gap-3">
                      <FaSitemap className="text-orange-500 text-6xl mt-1" />
                      <div>
                        <Link
                          href="/service/webdev"
                          className="font-semibold text-gray-900 hover:underline"
                          scroll={false}
                        >
                          Website Development
                        </Link>
                        <p className="text-gray-500 text-sm">
                          More than just an online presence, your website should
                          work for you. With data-driven design, seamless
                          functionality, and continuous optimization, we
                          transform your platform into a growth engine.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li className="cursor-pointer px-2 py-1 rounded-md">
                <Link
                  href="/article"
                  className="transition-all duration-300 hover:underline"
                  scroll={false}
                >
                  Article
                </Link>
              </li>
              <li className="cursor-pointer px-2 py-1 rounded-md">
                <Link
                  href="/contact"
                  className="transition-all duration-300 hover:underline"
                  scroll={false}
                >
                  Contact Us
                </Link>
              </li>
            </ul>
            <Link
              href="https://wa.me/6281234567890?text=Halo%20tim%20Dibilabs%20,%20Saya%20tertarik%20untuk%20konsultasi"
              target="_blank"
              rel="noopener noreferrer"
              className="hidden md:block animate-pulse-fast"
              scroll={false}
            >
              <button className="bg-white text-black px-4 py-2 rounded-full hover:text-white hover:bg-black font-semibold text-base">
                Free Consultant
              </button>
            </Link>

            {menuOpen && (
              <div className="md:hidden bg-orange-500 px-8 py-4 space-y-4 right-2">
                <Link href="/about" scroll={false} className="block text-white font-medium text-base">
                  About Us
                </Link>
                <Link href="/service" scroll={false} className="block text-white font-medium text-base">
                  Services
                </Link>
                <ul className="text-base text-white font-medium ml-5">
                  <Link href="/service/meta" scroll={false} className="block mb-2">
                    Meta Ads
                  </Link>
                  <Link href="/service/google" scroll={false} className="block mb-2">
                    Google Ads
                  </Link>
                  <Link href="/service/sosmed" scroll={false} className="block mb-2">
                    Social Media Management
                  </Link>
                  <Link href="/service/seo" scroll={false} className="block mb-2">
                    Search Engine Optimization Service
                  </Link>
                  <Link href="/service/software" scroll={false} className="block mb-2">
                    Software and Web App Development
                  </Link>
                  <Link href="/service/webdev" scroll={false} className="block mb-2">
                    Website Development
                  </Link>
                </ul>
                <Link href="/article" scroll={false} className="block text-white font-medium text-base">
                  Article
                </Link>
                <Link href="/contact" scroll={false} className="block text-white font-medium text-base">
                  Contact Us
                </Link>
                <Link
                  href="https://wa.me/6281234567890?text=Halo%20tim%20Dibilabs%20,%20Saya%20tertarik%20untuk%20konsultasi"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="block text-black bg-white px-4 py-2 rounded-full text-center font-semibold text-xs"
                  scroll={false}
                >
                  Free Consultant
                </Link>
              </div>
            )}

            <div className="md:hidden flex items-center shrink-0">
              <button
                onClick={() => setMenuOpen(!menuOpen)}
                className="relative w-8 h-8 focus:outline-none"
                aria-label="Menu"
              >
                <span
                  className={`block absolute h-0.5 w-8 bg-white transform transition duration-300 ease-in-out ${
                    menuOpen ? "rotate-45 top-3.5" : "top-2"
                  }`}
                ></span>
                <span
                  className={`block absolute h-0.5 w-8 bg-white transition-all duration-300 ease-in-out ${
                    menuOpen ? "opacity-0" : "top-4"
                  }`}
                ></span>
                <span
                  className={`block absolute h-0.5 w-8 bg-white transform transition duration-300 ease-in-out ${
                    menuOpen ? "-rotate-45 bottom-3.5" : "bottom-2"
                  }`}
                ></span>
              </button>
            </div>

            
          </nav>
        </div>
      </div>
    </>
  );
}
