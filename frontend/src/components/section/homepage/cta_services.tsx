import Image from "next/image";

export default function Cta_services() {
  return (
    <>
      {/* Services */}
      <div className="grid grid-cols-1 md:grid-cols-2 bg-white text-black">
        {/* Left Image */}
        <div className="w-full h-full">
          <Image
            src="/assets/homepage/meeting-room.png" // replace with your actual image path
            alt="Team Planning"
            width={800}
            height={600}
            className="w-full h-full object-cover"
            priority
          />
        </div>

        {/* Right Content */}
        <div className="flex flex-col justify-center px-6 md:px-12 py-10 gap-6 text-left">
          {/* Icon + Headline */}
          <div>
            <div className="relative w-[100px] h-[100px] mb-2">
              <Image
                src="/assets/homepage/raise-bar.svg"
                alt="Raise Icon"
                fill
                className="object-contain"
                priority
              />
            </div>
            <h2 className="text-5xl md:text-5xl font-bold text-orange-500 leading-snug">
              Ready to raise the bar?
              <br />
              <span className="text-orange-600">Because we are!</span>
            </h2>
          </div>

          {/* Paragraph */}
          <p className="text-xl leading-relaxed text-black max-w-md">
            Business <strong>isn’t just about one layer</strong>
            <br />
            —it’s built on many, each essential for <br />
            achieving big goals.
            <strong>
              {" "}
              That’s why we <br />
              thrive in all areas.
            </strong>
          </p>

          {/* Button - aligned right */}
          <div className="w-full flex justify-end">
            <button className="bg-black text-white text-sm font-semibold px-6 py-3 rounded-full flex items-center gap-2 hover:bg-gray-800 transition">
              Our Services <span className="text-lg">→</span>
            </button>
          </div>
        </div>
      </div>
    </>
  );
}
