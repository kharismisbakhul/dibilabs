import Image from "next/image";

export default function Articles() {
  const articles = [
    {
      image: "/assets/homepage/article1.png",
      title:
        "Fitur Instagram Shopping : Pengertian, Manfaat, dan Cara Mengaktifkannya",
      date: "22 Januari 2024",
    },
    {
      image: "/assets/homepage/article2.png",
      title:
        "Insight Instagram Shopping : Pengertian, Manfaat, dan Cara Melihatnya",
      date: "22 Januari 2024",
    },
    {
      image: "/assets/homepage/article3.png",
      title: "Rekomendasi 10 Tools Analisis Instagram yang Wajib Dicoba",
      date: "22 Januari 2024",
    },
    {
      image: "/assets/homepage/article4.png",
      title: "Apa itu Cost Per Acquisition dan Cara Menghitungnya",
      date: "22 Januari 2024",
    },
  ];
  return (
    <>
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
                <h3 className="text-sm font-semibold leading-tight mb-2">
                  {item.title}
                </h3>
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
    </>
  );
}
