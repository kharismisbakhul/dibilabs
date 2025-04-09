'use client';

import Image from "next/image";
import { ArrowRight } from 'lucide-react';
import { motion } from 'framer-motion';
import Navbar from "@/components/navbar";
import Footer from "@/components/footer";

export default function Homepage() {
  const articles = [
    {
      image: "/article1.png",
      title: "Fitur Instagram Shopping : Pengertian, Manfaat, dan Cara Mengaktifkannya",
      date: "22 Januari 2024",
    },
    {
      image: "/article2.png",
      title: "Insight Instagram Shopping : Pengertian, Manfaat, dan Cara Melihatnya",
      date: "22 Januari 2024",
    },
    {
      image: "/article3.png",
      title: "Rekomendasi 10 Tools Analisis Instagram yang Wajib Dicoba",
      date: "22 Januari 2024",
    },
    {
      image: "/article4.png",
      title: "Apa itu Cost Per Acquisition dan Cara Menghitungnya",
      date: "22 Januari 2024",
    },
  ];
  return (
    <>
      <Navbar/>
      <div className="bg-orange-500 text-white">
        <div className="container mx-auto px-4">

          {/* Hero Section */}
          <section className="px-6 md:px-16 py-12 md:py-20 relative overflow-hidden">
            <div className="grid md:grid-cols-2 gap-10 items-center">
              {/* Text Content - Left */}
              <div className="order-2 md:order-1">
                <h1 className="text-4xl md:text-6xl font-extrabold mb-2">Dibilabs.id</h1>
                <p className="text-lg md:text-xl mb-6 font-medium">Dibilabs.id Digital Marketing Agency</p>
                <p className="text-4xl md:text-4xl font-light leading-snug mb-6">
                  The creative <span className="font-bold">formulators</span>, <br />
                  driven to <span className="font-bold">experiment</span> and <br />
                  deliver <span className="font-bold">beyond expectations!</span>
                </p>
                <div className="flex items-center gap-4 mb-6">
                  <p className="text-lg font-light m-0">
                    Navigate the Digital Ecosystem with Dibilabs.id!
                  </p>
                  <button className="bg-white text-black px-6 py-3 rounded-full flex items-center gap-2 font-semibold">
                    Grow Together <ArrowRight className="w-5 h-5" />
                  </button>
                </div>
              </div>

              {/* SVG Character - Right */}
              <div className="relative w-full max-w-md mx-auto aspect-[4/5] order-1 md:order-2">
                <Image src="/beaker.png" alt="Beaker Mascot" fill className="object-contain" />
              </div>
            </div>
          </section>
        </div>
      </div>

      {/* Bottom Wavy Edge */}
      <div className="relative">

        {/* Bottom wave */}
        <div className="block bottom-0 left-0 w-full overflow-hidden leading-[0] z-10">
          <div className="flex justify-between w-full">
            {Array.from({ length: 10 }).map((_, i) => (
              <div
                key={i}
                className="w-[10vw] h-[5vw] bg-orange-500 rounded-b-full"
              />
            ))}
          </div>
        </div>
      </div>
      
      <section className="bg-white py-12 px-4 md:px-16 lg:px-24 relative overflow-hidden">
        {/* Top Right Bubble Decoration */}
        <div className="absolute right-0 top-0 z-0">
          <Image
            src="/right_bubble.svg"
            alt="Bubbles Decoration"
            width={180}
            height={180}
            className="opacity-80"
          />
        </div>

        <div className="text-center z-10 relative text-orange-600">
          <h2 className="text-3xl md:text-4xl ">
            Our Partners <span className="font-bold">Achievements</span>,
          </h2>
          <p className="text-3xl md:text-4xl mt-2">
            a Testament to <span className="font-bold">Our Excellence</span>.
          </p>
        </div>

        <div className="flex flex-wrap justify-center gap-10 mt-16 z-10 relative">
          {/* Block Item */}
          
          {[
            {
              color: "bg-orange-500",
              text1: "2000%",
              text2: "Revenue Growth",
              image: "/flask_orange_triangle.svg",
              alt: "Revenue Icon",
            },
            {
              color: "bg-black",
              text1: "5000K+",
              text2: "Organic Website Traffic",
              image: "/flask_black_circle.svg",
              alt: "Traffic Icon",
            },
            {
              color: "bg-blue-700",
              text1: "10–50x",
              text2: "Achieved ROAS",
              image: "/flask_blue_triangle.svg",
              alt: "ROAS Icon",
            },
            {
              color: "bg-orange-500",
              text1: "11K%",
              text2: "Social Media Followers Growth",
              image: "/flask_orange_circle.svg",
              alt: "Social Icon",
            },
            {
              color: "bg-black",
              text1: "100+",
              text2: "Impacted Clients",
              image: "/flask_black_triangle.svg",
              alt: "Clients Icon",
            },
            {
              color: "bg-blue-700",
              text1: "5+",
              text2: "Years of Digital Marketing Experience",
              image: "/flask_blue_circle.svg",
              alt: "Experience Icon",
            },
          ].map((item, index) => (
            <div key={index} className="flex flex-col items-center w-40">
              <div className={`${item.color} text-white rounded-full w-28 h-28 flex flex-col justify-center items-center text-center p-2`}>
                <span className="text-lg font-bold">{item.text1}</span>
                <span className="text-xs">{item.text2}</span>
              </div>
              <Image
                src={item.image}
                alt={item.alt}
                width={80}
                height={80}
                className="mt-4"
              />
            </div>
          ))}
        </div>
      </section>

      {/* Partners */}
      <section className="relative bg-white">
        <br /><br /><br /><br /><br /><br /><br /><br /><br />
        {/* Background half circle */}
        <div className="bg-[#1A1617] rounded-t-full pt-[10vw] pb-[4vw] px-4 md:px-10 text-white text-center relative z-10">
          {/* Animated Eyes */}
          <motion.div
            className="absolute top-[-160px] left-[44%] transform -translate-x-[50%] flex z-20"
            animate={{ scale: [1, 1.05, 1], y: [0, -3, 0] }}
            transition={{ repeat: Infinity, duration: 2 }}
          >
              <Image src="/eyes.svg" alt="Eyes" width={200} height={200} />
          </motion.div>

          {/* Hands with precision */}
          <motion.div
            className="absolute top-10 left-[250px] z-10"
            animate={{ y: [0, 5, 0] }}
            transition={{ repeat: Infinity, duration: 3 }}
          >
            <Image src="/left_hand.svg" alt="Left Hand" width={200} height={200} />
          </motion.div>

          <motion.div
            className="absolute top-10 right-[250px] z-10"
            animate={{ y: [0, 5, 0] }}
            transition={{ repeat: Infinity, duration: 3 }}
          >
            <Image src="/right_hand.svg" alt="Right Hand" width={200} height={200} />
          </motion.div>

          <h2 className="text-6xl md:text-6xl font-bold text-orange-500">Partners</h2>
          <div className="relative inline-block">
            <p className="text-4xl font-semibold text-[#FFD9B0]">Success Stories</p>

            {/* Left Star */}
            <div className="absolute -left-10 -bottom-2 w-4 h-4">
              <Image src="/star.svg" alt="Star" className="w-full h-full" width={20} height={20} />
            </div>

            {/* Right Star */}
            <div className="absolute -right-10 -top-12 w-4 h-4">
              <Image src="/star.svg" alt="Star" className="w-full h-full" width={20} height={20} />
            </div>
          </div>

          <p className="text-base md:text-lg mt-6 max-w-2xl mx-auto">
            Speak No More and Browse through the Wide <br />
            Array of Digital Success We assisted
          </p>

          <div className="container mx-auto px-4 pt-[2vw]">
            {/* Logos Grid */}
            <div className="grid grid-cols-2 md:grid-cols-4 gap-6 mt-10 px-4 md:px-10">
              {[
                'cakrawala.png',
                'somethinc.png',
                'pemanas-air.png',
                'jualmobilmu.png',
                // 'gama.png',
                'facetology.png',
                'facetology.png',
                'etacefit.png',
                'domessa.png',
              ].map((logo, idx) => (
                <div
                  key={idx}
                  className="bg-white rounded-xl p-4 flex items-center justify-center shadow-md"
                >
                  <Image
                    src={`/${logo}`}
                    alt={`Logo ${idx}`}
                    width={120}
                    height={80}
                    className="object-contain"
                  />
                </div>
              ))}
            </div>

            <p className="text-md text-white mt-6">and many more... <span className="text-xl">👀</span></p>
          </div>


        </div>

        {/* Background full */}
        {/* <div className="bg-[#1A1617] pb-16 px-4 md:px-10 text-white text-center relative z-10">
          
        </div> */}

        {/* Decorative bubbles */}
        <Image
          src="/left_bubble.svg"
          alt="Bubbles Decoration"
          width={200}
          height={200}
          className="absolute top-4 left-4 z-0"
        />
      </section>

      {/* Services */}
      <div className="grid grid-cols-1 md:grid-cols-2 bg-white text-black">
        {/* Left Image */}
        <div className="w-full h-full">
          <Image
            src="/meeting-room.png" // replace with your actual image path
            alt="Team Planning"
            width={800}
            height={600}
            className="w-full h-full object-cover"
          />
        </div>

        {/* Right Content */}
        <div className="flex flex-col justify-center px-6 md:px-12 py-10 gap-6 text-left">
          {/* Icon + Headline */}
          <div>
            <Image
              src="/raise-bar.svg" // your orange icon
              alt="Raise Icon"
              width={100}
              height={100}
              className="mb-2"
            />
            <h2 className="text-5xl md:text-5xl font-bold text-orange-500 leading-snug">
              Ready to raise the bar?<br />
              <span className="text-orange-600">Because we are!</span>
            </h2>
          </div>

          {/* Paragraph */}
          <p className="text-xl leading-relaxed text-black max-w-md">
            Business <strong>isn’t just about one layer</strong><br />
            —it’s built on many, each essential for <br />
            achieving big goals.<strong> That’s why we <br /> 
            thrive in all areas.</strong>
          </p>

          {/* Button - aligned right */}
          <div className="w-full flex justify-end">
            <button className="bg-black text-white text-sm font-semibold px-6 py-3 rounded-full flex items-center gap-2 hover:bg-gray-800 transition">
              Our Services <span className="text-lg">→</span>
            </button>
          </div>

        </div>
      </div>

      {/* Journey */}
      <section className="relative bg-white">
        {/* Top Bubbles */}
        <Image
          src="/left_bubble_white.svg"
          alt="Bubble"
          width={200}
          height={200}
          className="absolute top-0 left-0 z-30"
        />

        {/* Orange Section */}
        <div className="bg-orange-500 pt-[10vw] pb-[12vw] py-6 px-6 text-white text-center relative">
          <h2 className="text-2xl md:text-3xl font-semibold">
            We offer a wide array of services to assist your
            <br />
            <span className="font-bold">Digital Marketing Journey</span>
          </h2>
          <Image
            src="/right_bubble_white.svg"
            alt="Bubble"
            width={120}
            height={120}
            className="absolute bottom-4 right-4 z-10"
          />
        </div>

        {/* Black Cards Section */}
        <div className="bg-orange-500">
          <div className="bg-[#1A1617] rounded-t-[60px] py-14 px-4 md:px-10 text-white text-center relative z-10">
            <div className="container mx-auto grid grid-cols-1 md:grid-cols-3 gap-8">
              {[
                {
                  title: "Creative, Marketing, & Communication",
                  desc: "Brand and marketing services, from social media, creative campaigns, to performance marketing. Be a part of the growing list of our partners success stories",
                  icon: "/icon-left.svg",
                },
                {
                  title: "Digital Infrastructure Solutions",
                  desc: "From wordpress based website development, e-commerce store, custom LMS, CMS, ERP, web application, or software, we got you covered for your businesses digital infrastructures.",
                  icon: "/icon-center.svg",
                },
                {
                  title: "Strategic Business Laboratory",
                  desc: "Learn insights, open new market, strategise new market strategies by our digital laboratory. We help you do your research from UI/UX, market research, professional consulting, and tailored training for your custom company needs.",
                  icon: "/icon-right.svg",
                },
              ].map((service, idx) => (
                <div
                  key={idx}
                  className="bg-white text-black rounded-2xl shadow-md p-6 flex flex-col items-center relative mt-6"
                >
                  <div className="absolute -top-14 left-1/2 transform -translate-x-1/2">
                    <Image src={service.icon} alt="Icon" width={200} height={200} className="z-30"/>
                  </div>
                    <Image src={service.icon} alt="Icon" width={120} height={120} className="opacity-0"/>
                  <h3 className="mt-4 text-lg font-bold text-center text-orange-500">
                    {service.title}
                  </h3>
                  <p className="text-sm text-center mt-2">{service.desc}</p>
                  <button className="mt-4 px-4 py-2 bg-blue-500 text-white rounded-full text-sm">
                    Learn more →
                  </button>
                </div>
              ))}
            </div>
          </div>
        </div>

        {/* Bite Size Strategies Section */}
        {/* <div className="bg-white text-black px-6 pt-20 pb-10 relative">
          <div className="max-w-5xl mx-auto">
            <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-6">
              <div>
                <h2 className="text-3xl font-bold">Bite Size Strategies</h2>
                <p className="text-sm mt-2 max-w-md">
                  Gain insights and knowledge from our bite sized news and articles of up to date digital marketing news!
                </p>
              </div>
              <Image
                src="/yum.svg"
                alt="Yum Graphic"
                width={150}
                height={150}
                className="self-end"
              />
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-4 mt-10">
              {[1, 2, 3, 4].map((_, i) => (
                <div key={i} className="rounded-xl overflow-hidden shadow-md">
                  <Image src="/article_thumb.png" alt="Article" width={300} height={200} />
                  <div className="p-4">
                    <p className="text-sm font-semibold leading-snug">
                      Judul Artikel {i + 1}
                    </p>
                    <p className="text-xs mt-1 text-gray-500">22 Januari 2024</p>
                  </div>
                </div>
              ))}
            </div>

            <div className="text-center mt-6">
              <button className="px-6 py-2 bg-blue-500 text-white rounded-full text-sm">
                Browse Articles →
              </button>
            </div>
          </div>
        </div> */}
      </section>

      {/* Article Desc*/}
      <section className="relative bg-white pt-16 pb-10">
        {/* Top-right SVG illustration */}
        <Image
          src="/bite-cookies.svg"
          alt="Bite Cookie"
          width={400}
          height={400}
          className="absolute top-0 right-0 z-0 pointer-events-none"
        />

        {/* Content container */}
        <div className="relative z-10 max-w-7xl mx-auto px-4 md:px-8">
          {/* Header text */}
          <div className="mb-10 max-w-2xl">
            <h2 className="text-6xl font-bold text-black leading-tight mb-4">
              Bite Size<br />Strategies
            </h2>
            <p className="text-gray-700 text-xl">
              Gain insights and knowledge from our bite <br />
              sized news and articles of up to date digital <br />
              marketing news!
            </p>
          </div>

        </div>

        {/* YUM! Badge SVG */}
        <Image
          src="/yum.svg"
          alt="YUM Badge"
          width={100}
          height={100}
          className="absolute right-6 bottom-16 z-0 pointer-events-none"
        />
      </section>

      {/* Article */}

      <section className="relative bg-white">
          {/* Article cards */}
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4">
            {articles.map((item, idx) => (
              <div key={idx} className="relative h-64 overflow-hidden shadow-md">
                <Image
                  src={item.image}
                  alt={item.title}
                  fill
                  className="object-cover"
                />
                {/* Overlay */}
                <div className="absolute inset-0 bg-black bg-opacity-50 p-4 flex flex-col justify-end text-white">
                  <h3 className="text-sm font-semibold leading-tight mb-2">{item.title}</h3>
                  <p className="text-xs">{item.date}</p>
                </div>
              </div>
            ))}
          </div>

          {/* Browse Articles Button */}
          <div className="flex justify-end pt-8 pb-10 bg-black">
            <button className="bg-blue-600 text-white font-medium text-sm px-6 mr-8 py-2 rounded-full flex items-center gap-2 hover:bg-blue-700 transition">
              Browse Articles <span className="text-xl">→</span>
            </button>
          </div>
      </section>
      <Footer/>
    </>
  );
}
