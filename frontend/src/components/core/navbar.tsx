import Image from "next/image";

import { FaMeta, FaGoogle } from "react-icons/fa6";
import { IoShareSocial, IoApps } from "react-icons/io5";
import { FaSearch } from "react-icons/fa";
import { CgWebsite } from "react-icons/cg";

export default function Navbar() {
  return (
    <>
      <div className="bg-orange-500 text-white shadow-md z-10 relative">
        {/* Navbar */}
        <div className="container mx-auto px-4">
          <nav className="flex items-center justify-between px-6 py-7">
            <a href="/homepage">
              <div className="flex items-center space-x-2">
                <div className="relative w-[120px] h-[40px]">
                  <Image
                    src="/assets/core/logo.png"
                    alt="Dibilabs Logo"
                    fill
                    sizes="(max-width: 768px) 120px, 160px"
                    className="object-contain"
                  />
                </div>
              </div>
            </a>
            <ul className="hidden md:flex gap-20 font-medium">
              <li className="cursor-pointer px-2 py-1 rounded-md">
                <a href="/about" className="transition-all duration-300 hover:underline">About Us</a>
              </li>
              <li className="relative group cursor-pointer px-2 py-1 rounded-md">
                <span className="transition-all duration-300 hover:underline flex items-center gap-1">
                  Services
                </span>

                {/* Dropdown Menu */}
                <div className="absolute left-0 mt-3 w-[600px] bg-white border rounded-xl shadow-lg p-6 z-50 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-300">
                  <div className="grid grid-cols-2 gap-6">
                    {/* Item 1 */}
                    <div className="flex gap-3">
                      <FaMeta className="text-sky-600 text-xl mt-1" />
                      <div>
                        <a href="/service/meta" className="font-semibold text-gray-900 hover:underline">Meta Ads</a>
                        <p className="text-gray-500 text-sm">
                          Bootcamp untuk meningkatkan digital skills dengan penyaluran kerja bergaransi.
                        </p>
                      </div>
                    </div>

                    {/* Item 2 */}
                    <div className="flex gap-3">
                      <FaGoogle className="text-sky-600 text-xl mt-1" />
                      <div>
                        <a href="/service/google" className="font-semibold text-gray-900 hover:underline">Google Ads</a>
                        <p className="text-gray-500 text-sm">
                          Belajar beragam digital skills secara gratis dan bersertifikat.
                        </p>
                      </div>
                    </div>

                    {/* Item 3 */}
                    <div className="flex gap-3">
                      <IoShareSocial className="text-sky-600 text-xl mt-1" />
                      <div>
                        <a href="/service/sosmed" className="font-semibold text-gray-900 hover:underline">
                          Social Media Management
                        </a>
                        <p className="text-gray-500 text-sm">
                          Bimbingan lebih personal, kelas interaktif, dan komunitas suportif.
                        </p>
                      </div>
                    </div>

                    {/* Item 4 */}
                    <div className="flex gap-3">
                      <FaSearch className="text-sky-600 text-xl mt-1" />
                      <div>
                        <a href="/service/seo" className="font-semibold text-gray-900 hover:underline">
                          Search Engine Optimization Service
                        </a>
                        <p className="text-gray-500 text-sm">
                          Dapatkan video course dan akses penyaluran magang virtual bersertifikat.
                        </p>
                      </div>
                    </div>

                    {/* Item 5 */}
                    <div className="flex gap-3">
                      <IoApps className="text-sky-600 text-xl mt-1" />
                      <div>
                        <a href="/service/software" className="font-semibold text-gray-900 hover:underline">
                          Software and Web App Development
                        </a>
                        <p className="text-gray-500 text-sm">
                          Dapatkan video course dan akses penyaluran magang virtual bersertifikat.
                        </p>
                      </div>
                    </div>

                    {/* Item 6 */}
                    <div className="flex gap-3">
                      <CgWebsite className="text-sky-600 text-xl mt-1" />
                      <div>
                        <a href="/service/webdev" className="font-semibold text-gray-900 hover:underline">
                          Website Development
                        </a>
                        <p className="text-gray-500 text-sm">
                          Dapatkan video course dan akses penyaluran magang virtual bersertifikat.
                        </p>
                      </div>
                    </div>

                  </div>
                </div>
              </li>
              <li className="cursor-pointer px-2 py-1 rounded-md">
                <a href="/article" className="transition-all duration-300 hover:underline">Article</a>
              </li>
              <li className="cursor-pointer px-2 py-1 rounded-md">
                <a href="/contact" className="transition-all duration-300 hover:underline">Contact Us</a>
              </li>
            </ul>
            <a
              href="https://wa.me/6281234567890?text=Halo%20tim%20Dibilabs%20,%20Saya%20tertarik%20untuk%20konsultasi"
              target="_blank"
              rel="noopener noreferrer"
            >
              <button className="bg-white text-black px-4 py-2 rounded-full hover:text-white hover:bg-black font-semibold text-sm">
                Free Consultant
              </button>
            </a>
          </nav>
        </div>
      </div>
    </>
  );
}
