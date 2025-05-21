'use client';

import Image from 'next/image';
import { FaMapMarkerAlt, FaWhatsapp, FaEnvelope } from 'react-icons/fa';

export default function DetailContact() {
  return (
    <div className="relative bg-white py-12 px-4 sm:px-6 lg:px-8 pt-32">
      <div className="max-w-7xl mx-auto text-center">
        <h2 className="text-xl md:text-3xl font-bold text-orange-500 mb-2 mt-5">Have a questions? Call Us!</h2>
        <p className="text-base md:text-xl text-orange-500 mb-10">
          We are ready to answer all of your questions. You can call us from our contact below.
        </p>
        <div className="bg-orange-500 rounded-xl shadow-lg p-6 md:p-10 flex flex-col md:flex-row items-center">
          <div className="w-full md:w-1/2 h-[300px] md:h-[400px]">
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.0324520792974!2d106.82132999999999!3d-6.2743269999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f3d583b480c1%3A0x5431dc82437d20d2!2sDibilabs.id!5e0!3m2!1sid!2sid!4v1747832282553!5m2!1sid!2sid"
              className="w-full h-full rounded-lg border-0"
              allowFullScreen
              loading="lazy"
            ></iframe>
          </div>

          <div className="w-full md:w-1/2 mt-6 md:mt-0 md:pl-10 space-y-6 text-left">
            <div>
              <div className="flex items-center text-lg font-semibold text-white">
                <FaMapMarkerAlt className="text-white mr-4" /> <span>Questions/Feedback</span>
              </div>
              <p className="text-sm text-white ml-9">Sunday - Monday (09.00 - 17.00 WIB)</p>
            </div>

            <div>
              <div className="flex items-center text-lg font-semibold text-white">
                <FaWhatsapp className="text-white mr-4" /> Chat / Call us
              </div>
              <p className="text-sm text-white ml-9">WhatsApp</p>
              <a
                href="https://wa.me/6281234567890"
                className="text-white ml-9 hover:underline text-sm"
                target="_blank"
                rel="noopener noreferrer"
              >
                (+62) 812-3456-7890
              </a>
            </div>

            <div>
              <div className="flex items-center text-lg font-semibold text-white">
                <FaEnvelope className="text-white mr-4" /> Our Email
              </div>
              <p className="text-sm text-white ml-9">Dibilabs@gmail.com</p>
            </div>

            <div>
              <div className="flex items-center text-lg font-semibold text-white">
                <FaMapMarkerAlt className="text-white mr-4" /> Office Address
              </div>
              <p className="text-sm text-white ml-9">
                Plaza Cityview, Jl. Kemang Timur No.1 Lt.2, <br />
                Pejaten Bar., Ps. Minggu, <br />
                Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta <br />
                12510
              </p>
            </div>
          </div>
        </div>
      </div>

      <div className="absolute right-0 top-[100px] md:top-[500px] z-0 md:w-[200px] md:h-[200px] w-[80px] h-[80px]">
        <Image
          src="/assets/contact/right_bubble.svg"
          alt="Bubbles Decoration"
          fill
          className="opacity-80"
        />
      </div>

      <div className="absolute left-0 top-[100px] md:top-[150px] z-0 md:w-[200px] md:h-[200px] w-[80px] h-[80px] scale-x-[-1]">
        <Image
          src="/assets/contact/right_bubble.svg"
          alt="Bubbles Decoration"
          fill
          className="opacity-80"
        />
      </div>

      {/* <div className="absolute right-5 md:top-[150px] w-[120px] md:w-[150px] animate-float">
        <Image
          src="/assets/contact/eyes.svg"
          alt="Bubbles Decoration"
          width={300}
          height={300}
        />
      </div> */}

    </div>
  );
}
