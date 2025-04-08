'use client';

import Image from "next/image";
import { FaLinkedinIn, FaInstagram } from "react-icons/fa";
import { FaXTwitter } from "react-icons/fa6"; // for X (Twitter)

import { useState } from 'react';

export default function Footer() {
  const [form, setForm] = useState({ name: '', brand: '', email: '', number: '', industry: '', services: '' });
  
  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => {
    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    const res = await fetch('/api/submit', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(form),
    });

    const data = await res.json();
    alert(data.message);
  };
  
  return (
    <>
      {/* Bottom Section */}
      <div className="bg-orange-500 text-white px-6 py-10">
        <div className="container mx-auto px-4">
          <div className="max-w-7xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            {/* Bubble + Mascot Section */}
            <div className="relative w-full flex justify-center pt-30 pb-60 bg-orange-500 overflow-visible z-40">
              {/* Bubble container */}
              <div className="relative w-full max-w-3xl z-10 overflow-visible">
                {/* Bubble Image */}
                <Image
                  src="/bubble.png"
                  alt="Speech Bubble"
                  width={600}
                  height={400}
                  className="w-full h-auto object-contain"
                  priority
                />

                {/* Text inside bubble */}
                <div className="absolute inset-0 flex justify-center items-start pt-8 sm:pt-10 px-6 sm:px-12">
                  <div className="text-center text-black text-base sm:text-lg md:text-xl leading-relaxed max-w-2xl">
                    <p className="font-bold text-sm sm:text-2xl md:text-2xl leading-snug">
                      Ready to Elevate Your <br />
                      Business to The{" "}
                      <span className="text-orange-500">Next Level</span>?
                    </p>
                    <p className="mt-4 text-sm sm:text-base md:text-md">
                      Book a free consultation with our Digital Marketing <br />
                      Strategist to help guide the most strategic <br />
                      next step of your business. We are excited <br />
                      to grow with you!
                    </p>
                  </div>
                </div>
              </div>

              {/* Mascot centered below the bubble */}
              <div className="absolute -bottom-11 right-[130px] w-[500px] z-30">
                <Image
                  src="/mascot.png"
                  alt="Mascot"
                  width={400}
                  height={400}
                  className="w-full h-full object-contain"
                />
              </div>
            </div>

            {/* Form Section */}
            <form onSubmit={handleSubmit} className="grid grid-cols-1 gap-2 w-full">
              <label className="text-white text-sm">Your name</label>
              <input
                type="text"
                name="name"
                value={form.name}
                onChange={handleChange}
                placeholder="Your name"
                className="px-4 py-2 rounded text-black"
              />
              <label className="text-white text-sm">Brand Name</label>
              <input
                type="text"
                name="brand"
                value={form.brand}
                onChange={handleChange}
                placeholder="Brand Name"
                className="px-4 py-2 rounded text-black"
              />
              <label className="text-white text-sm">Email</label>
              <input
                type="email"
                name="email"
                value={form.email}
                onChange={handleChange}
                placeholder="Email"
                className="px-4 py-2 rounded text-black"
              />
              <label className="text-white text-sm">Whatsapp Number</label>
              <input
                type="text"
                name="number"
                value={form.number}
                onChange={handleChange}
                placeholder="Whatsapp Number"
                className="px-4 py-2 rounded text-black"
              />
              <label className="text-white text-sm">Industry</label>
              <select className="px-4 py-2 rounded text-black" name="industry" onChange={handleChange} value={form.industry}>
                <option>Industry</option>
                <option>Technology</option>
                <option>Health</option>
                <option>Education</option>
              </select>
              <label className="text-white text-sm">Services</label>
              <select className="px-4 py-2 rounded text-black" name="services" onChange={handleChange} value={form.services}>
                <option>Services</option>
                <option>Meta Ads</option>
                <option>Website Development</option>
                <option>SEO</option>
              </select>
              {/* Right-aligned button */}
              <div className="flex justify-end">
                <button
                  type="submit"
                  className="bg-black text-white px-7 py-2 mt-2 rounded-xl"
                >
                  Send
                </button>
              </div>
            </form>
          </div>

          <div className="text-center mt-10">
            <p className="text-xl font-bold">This is the end of the journey.</p>
            <a href="#">
              <button className="mt-2 px-4 py-1 bg-white text-black rounded-full font-semibold">
                Back to Top
              </button>
            </a>
          </div>

          {/* Footer */}
          <div className="mt-10 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10 pt-10">
            {/* Column 1 - Branding */}
            <div>
              <Image
                src="/logo.png"
                alt="Dibilabs Logo"
                width={120}
                height={40}
              />
              <br />
              <p className="text-sm mb-4">
                Dibilabs.id is a Digital <br />
                Marketing Agency <br />
                based in Jakarta, <br />
                Indonesia. The brother <br />
                company of <br />
                dibimbing.id.
              </p>
            </div>

            {/* Column 2 - Services */}
            <div>
              <h3 className="font-semibold">Services</h3>
              <ul className="text-sm space-y-1 mt-2">
                <li>
                  <a href="#">Meta Ads</a>
                </li>
                <li>
                  <a href="#">Google Ads</a>
                </li>
                <li>
                  <a href="#">Social Media Management</a>
                </li>
                <li>
                  <a href="#">Search Engine Optimization Service</a>
                </li>
                <li>
                  <a href="#">Website Development</a>
                </li>
              </ul>
            </div>

            {/* Column 3 - Contact Info */}
            <div>
              <h3 className="font-semibold mb-2">Contact Info</h3>
              <p className="text-sm">
                Jl. Kemang Timur No.1, <br />
                Plaza CityView <br />
                0812-9882-6529 <br />
                Mon-Fri 9am-6pm
              </p>
              <div className="mt-4">
                <h3 className="font-semibold">Follow us</h3>
                <div className="flex space-x-3 mt-2">
                  {/* LinkedIn */}
                  <a
                    href="https://www.linkedin.com"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white rounded-full p-2"
                  >
                    <FaLinkedinIn className="text-[#0077B5] text-2xl" />
                  </a>

                  {/* Instagram */}
                  <a
                    href="https://www.instagram.com"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white rounded-full p-2"
                  >
                    <FaInstagram className="text-[#E4405F] text-2xl" />
                  </a>

                  {/* X (Twitter) */}
                  <a
                    href="https://x.com"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white rounded-full p-2"
                  >
                    <FaXTwitter className="text-black text-2xl" />
                  </a>
                </div>
              </div>
            </div>

            {/* Column 4 - Newsletter */}
            <div>
              <h3 className="font-semibold mb-2">Join Our Newsletter</h3>
              <div className="flex bg-white rounded-xl">
                <input
                  type="email"
                  placeholder="Email Address"
                  className="px-4 py-2 rounded-l-md text-black w-full"
                />
                <button className="bg-black px-4 py-2 rounded-xl">
                  Signup
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
