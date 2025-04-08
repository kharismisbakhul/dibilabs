import Image from "next/image";

export default function Navbar() {
  return (
    <>
      <div className="bg-orange-500 text-white">
        {/* Navbar */}
        <div className="container mx-auto px-4">
          <nav className="flex items-center justify-between px-6 py-4">
            <a href="#">
              <div className="flex items-center space-x-2">
                <Image
                  src="/logo.png"
                  alt="Dibilabs Logo"
                  width={120}
                  height={40}
                />
              </div>
            </a>
            <ul className="hidden md:flex gap-20 font-medium">
              <li className="cursor-pointer">
                <a href="#">About Us</a>
              </li>
              <li className="cursor-pointer">
                <a href="#">Services</a>
              </li>
              <li className="cursor-pointer">
                <a href="#">Article</a>
              </li>
              <li className="cursor-pointer">
                <a href="#">Contact Us</a>
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
