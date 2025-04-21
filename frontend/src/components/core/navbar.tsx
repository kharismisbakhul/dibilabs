import Image from "next/image";

export default function Navbar() {
  return (
    <>
      <div className="bg-orange-500 text-white">
        {/* Navbar */}
        <div className="container mx-auto px-4">
          <nav className="flex items-center justify-between px-6 py-4">
            <a href="/homepage">
              <div className="flex items-center space-x-2 mt-4">
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
              <li className="cursor-pointer transition-all duration-300 hover:shadow-md hover:shadow-black px-2 py-1 rounded-md">
                <a href="/about">About Us</a>
              </li>
              <li className="cursor-pointer transition-all duration-300 hover:shadow-md hover:shadow-black px-2 py-1 rounded-md">
                <a href="/service">Services</a>
              </li>
              <li className="cursor-pointer transition-all duration-300 hover:shadow-md hover:shadow-black px-2 py-1 rounded-md">
                <a href="/article">Article</a>
              </li>
              <li className="cursor-pointer transition-all duration-300 hover:shadow-md hover:shadow-black px-2 py-1 rounded-md">
                <a href="/contact">Contact Us</a>
              </li>
            </ul>
            <button className="bg-black text-white px-4 py-2 rounded-full font-semibold text-sm">
              Free Consultant
            </button>
          </nav>
        </div>
      </div>
    </>
  );
}
