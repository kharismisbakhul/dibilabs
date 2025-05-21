// import { Articles } from "@/types/json/articles";
import Image from "next/image";
import Link from "next/link";

// type Props = {
//   data: Articles[]; // or Record<string, any>[]
// };

const dummyArticles = [
  {
    image: "/assets/homepage/article1.png",
    title: 'Risiko Menjual Mobil Bekas Tanpa Cek Legalitas Pembeli',
    slug: 'risiko-menjual-mobil-bekas-tanpa-cek-legalitas-pembeli',
    desc: "Bahaya jual mobil tanpa cek pembeli tidak hanya berkaitan dengan pencurian atau penipuan, tetapi juga...",
    date: "19 May 2025",
    category: "Berita",
    author: "adminqiv",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Strategi Jual Mobil Bekas untuk Pemilik Mobil Fleet atau Perusahaan",
    slug: 'strategi-jual-mobil-bekas-fleet',
    desc: "Dalam artikel ini, membahas berbagai strategi efektif untuk jual mobil bekas perusahaan...",
    date: "18 May 2025",
    category: "Tips & Trick",
    author: "adminqiv",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    date: "18 May 2025",
    category: "Berita",
    author: "adminqiv",
  },
  {
    image: "/assets/homepage/article4.png",
    title:
      "Kenali Penyebab Harga Mobil Bekas Anda Tidak Naik-naik",
    slug: 'kenali-penyebab-harga-mobil-bekas-anda-tidak-naik-naik',
    desc: "Membahas beberapa penyebab utama harga mobil bekas sulit naik, serta tips mengatasinya agar Anda...",
    date: "18 May 2025",
    category: "Berita",
    author: "adminqiv",
  },
];

export default function ListArticle() {
  return (
    <div className="container mx-auto px-8 md:px-4 py-8 pt-36">
      <div className="grid md:grid-cols-3 gap-6">
        <div className="md:col-span-2">
          <h2 className="text-3xl font-bold mb-4">
            Artikel <span className="text-orange-500">Terbaru</span>
          </h2>

          <div className="grid md:grid-cols-2 gap-6">

            {dummyArticles.map((item, index) => (
              <div key={index} className="bg-white rounded-lg shadow overflow-hidden hover:shadow-xl transform hover:scale-105">
                <Link href={`/article/${item.slug}`}>
                  <div className="relative w-full h-48">
                    <Image
                      src={item.image}
                      alt="Risiko Menjual Mobil"
                      layout="fill"
                      objectFit="cover"
                    />
                    <span className="absolute bottom-0 right-0 bg-orange-500 text-white text-xs font-semibold px-2 py-1 m-2 rounded">
                      {item.category}
                    </span>
                  </div>
                  <div className="p-4">
                    <h3 className="text-lg font-semibold">
                      {item.title}
                    </h3>
                    <p className="text-sm text-gray-600 mt-2">
                      {item.desc}
                    </p>
                    <div className="flex items-center gap-2 text-xs text-gray-400 mt-4">
                      <span>👤 {item.author}</span>
                      <span>|</span>
                      <span>📅 {item.date}</span>
                    </div>
                  </div>
                </Link>
              </div>
            ))}
            
          </div>
        </div>

        {/* Rekomendasi Kami */}
        <div>
          <h2 className="text-3xl font-bold p-4">
            Rekomendasi <span className="text-orange-500">Kami</span>
          </h2>
          <div className="space-y-4">
            {[
              {
                title: "Platform Terbaik Jual Mobil bekas Online",
                slug: "platform-terbaik-jual-mobil-bekas-online",
                desc: "Membahas beberapa penyebab utama harga mobil bekas sulit naik, serta tips mengatasinya agar Anda...",
                date: "21 February 2025",
                type: "Berita",
                author: "adminqiv",
              },
              {
                title: "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak Pusing di Belakang!",
                slug: "pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak-pusing-di-belakang",
                desc: "Membahas beberapa penyebab utama harga mobil bekas sulit naik, serta tips mengatasinya agar Anda...",
                date: "18 May 2025",
                type: "Berita",
                author: "adminqiv",
              },
              {
                title: "Berapa Penurunan Harga Mobil Setiap Tahunnya",
                slug: "berapa-penurunan-harga-mobil-setiap-tahunnya",
                desc: "Membahas beberapa penyebab utama harga mobil bekas sulit naik, serta tips mengatasinya agar Anda...",
                date: "11 February 2025",
                type: "Berita",
                author: "adminqiv",
              },
              {
                title: "Cara Jual Mobil Bekas Online dengan Aman dan Proses Cepat",
                slug: "cara-jual-mobil-bekas-online-dengan-aman-dan-proses-cepat",
                desc: "Membahas beberapa penyebab utama harga mobil bekas sulit naik, serta tips mengatasinya agar Anda...",
                date: "10 March 2025",
                type: "Berita",
                author: "adminqiv",
              },
              {
                title: "Keuntungan dan Tips Menjual Mobil Bekas Dengan Benar",
                slug: "keuntungan-dan-tips-menjual-mobil-bekas-dengan-benar",
                desc: "Membahas beberapa penyebab utama harga mobil bekas sulit naik, serta tips mengatasinya agar Anda...",
                date: "18 May 2025",
                type: "Berita",
                author: "adminqiv",
              },
            ].map((item, index) => (
              <div key={index} className="border-b p-4 hover:shadow-xl transform hover:scale-105">
                <Link href={`/article/${item.slug}`}>
                  <span className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 ${item.type === 'Tips & Trick' ? 'bg-yellow-400 text-white' : 'bg-orange-500 text-white'}`}>
                    {item.type}
                  </span>
                  <h3 className="text-sm font-semibold leading-snug">
                    {item.title}
                  </h3>
                  <p className="text-xs text-gray-600 mt-1">
                      {item.desc}
                  </p>
                  <p className="text-xs text-gray-400 mt-2"><span>👤 {item.author} | 📅 {item.date}</span></p>
                </Link>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}
