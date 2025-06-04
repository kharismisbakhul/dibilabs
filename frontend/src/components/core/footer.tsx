"use client";

import Image from "next/image";
import { FaTiktok, FaLinkedinIn, FaInstagram, FaFacebookF, FaEnvelope } from "react-icons/fa6";

import { useState } from "react";
import Link from "next/link";

import toast, { Toaster } from 'react-hot-toast';

export default function Footer() {
  const [form, setForm] = useState({
    name: "",
    brand: "",
    email: "",
    number: "",
    industry: "",
    services: "",
  });
  const [subcription, setSubcription] = useState("");

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>
  ) => {
    // if (e.target.name === "number") {
    //   e.target.value = e.target.value.replace(/\D/g, ""); // Remove non-digit characters

    //   if (e.target.value.startsWith("0")) {
    //     e.target.value = "62" + e.target.value.slice(1); // Replace leading 0 with 62
    //   } else if (!e.target.value.startsWith("62")) {
    //     e.target.value = "62" + e.target.value; // Ensure it starts with 62
    //   }
    // }

    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleChangeSubcription = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>
  ) => {
    setSubcription(e.target.value);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    const res = await fetch("/api/core/cta", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(form),
    });

    const data = await res.json();
    console.log(data)
    if (data.status === 200) {
      toast.success(data.message);
    } else {
      toast.error(data.message || "Something went wrong");
    }
  };

  const handleSubcription = async (e: React.FormEvent) => {
    e.preventDefault();

    const res = await fetch("/api/core/subscription", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(subcription),
    });

    const data = await res.json();
    console.log(data)
    if (data.status === 200) {
      toast.success(data.message);
    } else {
      toast.error(data.message || "Something went wrong");
    }
  };

  return (
    <>
      <Toaster position="top-center" />
      {/* Bottom Section */}
      <div className="bg-orange-500 text-white px-6 py-10" id="footer">
        <div className="container mx-auto px-4">
          <div className="max-w-7xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            {/* Bubble + Mascot Section */}
            <div className="relative w-full flex justify-center pt-30 pb-48 md:pb-60 bg-orange-500 overflow-visible z-40">
              {/* Bubble container */}
              <div className="relative w-full max-w-3xl z-10 overflow-visible">
                {/* Bubble Image */}
                <div className="md:max-w-[600px] mx-auto">
                  <Image
                    src="/assets/core/bubble.png"
                    alt="Speech Bubble"
                    width={600}
                    height={400}
                    className="w-full max-w-[120vw] -mx-[9vw] w-[410px] h-[300px] md:w-[600px] md:h-[320px] md:max-w-full md:mx-0 h-auto"
                    priority
                  />
                </div>

                {/* Text inside bubble */}
                <div className="absolute inset-0 flex justify-center items-start pt-8 sm:pt-10 px-6 sm:px-12">
                  <div className="text-center text-black text-base sm:text-lg md:text-xl leading-relaxed max-w-2xl">
                    <p className="font-bold text-sm sm:text-2xl md:text-2xl leading-snug">
                      Ready to Elevate Your <br />
                      Business to The{" "}
                      <span className="text-orange-500">Next Level</span>?
                    </p>
                    <p className="mt-4 text-xs sm:text-base md:text-md">
                      Book a free consultation with our Digital Marketing <br />
                      Strategist to help guide the most strategic <br />
                      next step of your business. We are excited <br />
                      to grow with you!
                    </p>
                  </div>
                </div>
              </div>

              {/* Mascot centered below the bubble */}
              <div className="absolute top-24 right-10 w-[350px] md:-bottom-11 md:right-[130px] md:w-[500px] z-30">
                <Image
                  src="/assets/core/mascot.png"
                  alt="Mascot"
                  width={400}
                  height={400}
                  className="w-full h-full object-contain"
                />
              </div>
            </div>

            {/* Form Section */}
            <form
              onSubmit={handleSubmit}
              className="grid grid-cols-1 gap-2 w-full"
            >
              <label htmlFor="name" className="text-white text-sm">Your name</label>
              <input
                id="name"
                type="text"
                name="name"
                value={form.name}
                onChange={handleChange}
                placeholder="Your name"
                className="px-4 py-2 rounded text-black"
              />
              <label htmlFor="brand" className="text-white text-sm">Brand Name</label>
              <input
                id="brand"
                type="text"
                name="brand"
                value={form.brand}
                onChange={handleChange}
                placeholder="Brand Name"
                className="px-4 py-2 rounded text-black"
              />
              <label htmlFor="email" className="text-white text-sm">Email</label>
              <input
                id="email"
                type="email"
                name="email"
                value={form.email}
                onChange={handleChange}
                placeholder="Email"
                className="px-4 py-2 rounded text-black"
              />
              <label htmlFor="wa" className="text-white text-sm">Whatsapp Number</label>
              <input
                id="wa"
                type="text"
                name="number"
                value={form.number}
                onChange={handleChange}
                placeholder="Whatsapp Number"
                className="px-4 py-2 rounded text-black"
              />
              <label htmlFor="industry-select" className="text-white text-sm">Industry</label>
              <div className="relative">
                <select
                  id="industry-select"
                  className={`appearance-none px-4 pr-10 py-2 rounded w-full bg-white ${
                    form.industry === "" ? "text-gray-400" : "text-black"
                  }`}
                  name="industry"
                  onChange={handleChange}
                  value={form.industry}
                >
                  <option disabled value="" hidden>--- Choose Industry ---</option>
                  <option className="text-black">Tech</option>
                  <option className="text-black">Health</option>
                  <option className="text-black">Education</option>
                  <option className="text-black">Fashion</option>
                  <option className="text-black">Beauty</option>
                  <option className="text-black">Food and Beverage</option>
                  <option className="text-black">Services</option>
                  <option className="text-black">Government</option>
                  <option className="text-black">Others</option>
                </select>
                <div className="pointer-events-none absolute inset-y-0 right-3 flex items-center text-gray-500">
                  <svg className="h-4 w-4" viewBox="0 0 20 20" fill="currentColor">
                    <path d="M7 7l3-3 3 3m0 6l-3 3-3-3" />
                  </svg>
                </div>
              </div>
              <label htmlFor="services-select" className="text-white text-sm">Services</label>
              <div className="relative">
                <select
                  id="services-select"
                  className={`appearance-none px-4 pr-10 py-2 rounded w-full bg-white ${
                    form.services === "" ? "text-gray-400" : "text-black"
                  }`}
                  name="services"
                  onChange={handleChange}
                  value={form.services}
                >
                  <option disabled value="" hidden>--- Choose Services ---</option>
                  <option className="text-black">Meta Ads</option>
                  <option className="text-black">Google Ads</option>
                  <option className="text-black">Social Media Management</option>
                  <option className="text-black">Search Engine Optimization Service</option>
                  <option className="text-black">Software and Web App Development</option>
                  <option className="text-black">Website Development</option>
                </select>
                <div className="pointer-events-none absolute inset-y-0 right-3 flex items-center text-gray-500">
                  <svg className="h-4 w-4" viewBox="0 0 20 20" fill="currentColor">
                    <path d="M7 7l3-3 3 3m0 6l-3 3-3-3" />
                  </svg>
                </div>
              </div>
              {/* Right-aligned button */}
              <div className="flex justify-end">
                <button
                  type="submit"
                  className="bg-white text-black px-7 py-2 mt-2 rounded-xl hover:bg-black hover:text-white"
                >
                  Send
                </button>
              </div>
            </form>
          </div>

          <div className="text-center mt-10">
            <p className="text-xl font-bold">This is the end of the journey.</p>
            <Link href="#" scroll={false}>
              <button 
                onClick={(e) => {
                  e.preventDefault();
                  window.scrollTo({ top: 0, behavior: 'smooth' });
                }}
                className="mt-2 px-4 py-1 bg-white text-black rounded-full font-semibold hover:bg-black hover:text-white transition-colors duration-300"
              >
                Back to Top
              </button>
            </Link>
          </div>

          {/* Footer */}
          <div className="mt-10 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10 pt-10">
            {/* Column 1 - Branding */}
            <div>
              <Link href="/homepage" scroll={false}>
                <div className="relative w-[150px] h-[60px]">
                  <Image
                    src="/assets/core/logo2.png"
                    alt="Dibilabs Logo"
                    fill
                    sizes="(max-width: 768px) 150px, 160px"
                    className="object-contain"
                  />
                </div>
              </Link>
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
                  <Link href="/service/meta" scroll={false}>Meta Ads</Link>
                </li>
                <li>
                  <Link href="/service/google" scroll={false}>Google Ads</Link>
                </li>
                <li>
                  <Link href="/service/sosmed" scroll={false}>Social Media Management</Link>
                </li>
                <li>
                  <Link href="/service/seo" scroll={false}>Search Engine Optimization Service</Link>
                </li>
                <li>
                  <Link href="/service/software" scroll={false}>
                    Software and Web App Development
                  </Link>
                </li>
                <li>
                  <Link href="/service/webdev" scroll={false}>Website Development</Link>
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
                  {/* Tiktok */}
                  <Link
                    href="https://www.tiktok.com/@dibilabs.id"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white rounded-full p-2 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500"
                    scroll={false}
                    aria-label="Visit our Tiktok page"
                  >
                    <FaTiktok className="text-[#000000] text-2xl" />
                  </Link>

                  {/* LinkedIn */}
                  <Link
                    href="https://www.linkedin.com/company/dibilabs-id"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white rounded-full p-2 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500"
                    scroll={false}
                    aria-label="Visit our LinkedIn page"
                  >
                    <FaLinkedinIn className="text-[#0A66C2] text-2xl" />
                  </Link>

                  {/* Instagram */}
                  <Link
                    href="https://www.instagram.com/dibilabs.id"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white rounded-full p-2 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500"
                    scroll={false}
                    aria-label="Visit our Instagram page"
                  >
                    <FaInstagram className="text-[#E1306C] text-2xl" />
                  </Link>

                  {/* Facebook */}
                  <Link
                    href="https://www.facebook.com/dibilabs.id"
                    target="_blank"
                    rel="noopener noreferrer"
                    className="bg-white rounded-full p-2 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500"
                    scroll={false}
                    aria-label="Visit our Facebook page"
                  >
                    <FaFacebookF className="text-[#4267B2] text-2xl" />
                  </Link>

                  {/* Email */}
                  <Link
                    href="mailto:partnership@dibilabs.id?subject=Partnership%20Opportunity&body=Hi%20Dibilabs%20Team%2C%0A%0AI%20am%20interested%20in%20discussing%20a%20partnership%20with%20your%20agency.%20Please%20let%20me%20know%20the%20next%20steps.%0A%0ARegards%2C"
                    className="bg-white rounded-full p-2 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-orange-500"
                    scroll={false}
                    aria-label="Email us about partnership opportunities"
                  >
                    <FaEnvelope className="text-[#DB4437] text-2xl" />
                  </Link>
                </div>
              </div>
            </div>

            {/* Column 4 - Newsletter */}
            <div>
              <form onSubmit={handleSubcription}>
                <h3 className="font-semibold mb-2">Join Our Newsletter</h3>
                <div className="flex bg-white rounded-xl">
                  <input
                    id="email-subscription"
                    type="email"
                    value={subcription}
                    onChange={handleChangeSubcription}
                    placeholder="Email Address"
                    className="px-4 py-2 rounded-l-md text-black w-full"
                  />
                  <button type="submit" className="bg-white text-black px-4 py-2 rounded-xl shadow-lg hover:bg-black hover:text-white">
                    Signup
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
