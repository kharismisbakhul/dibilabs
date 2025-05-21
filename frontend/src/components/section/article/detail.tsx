// pages/article/[slug].tsx
"use client";

// import { useRouter } from 'next/router';
// import { Articles } from "@/types/json/articles";
// import { FaFacebookF, FaShareAlt } from "react-icons/fa";
import ShareSection from "./shareSection";
import Image from "next/image";

// type Props = {
//   data: Articles[]; // or Record<string, any>[]
// };

// interface ArticleCardProps {
//   image: string;
//   title: string;
//   slug: string;
//   desc: string;
//   date: string;
//   category: string;
//   author: string;
// }

export default function ArticleDetail() {
  //   const router = useRouter();
  //   const { slug } = router.query;

  return (
    <div className="max-w-7xl mx-auto px-4 py-8 pt-36">
      {/* Breadcrumb */}
      <nav className="text-sm mb-4 text-gray-500">
        <a href="/article">
          <span>List Article</span>
        </a>{" "}
        &gt;{" "}
        <span className="text-bold">
          Risiko Menjual Mobil Bekas Tanpa Cek Legalitas Pembeli
        </span>
        {/* <span className="text-black font-medium">{slug}</span> */}
      </nav>

      {/* Main Layout */}
      <div className="grid grid-cols-1 md:grid-cols-12 gap-8">
        {/* Left Content */}
        <div className="md:col-span-8">
          {/* Meta */}
          <div className="flex items-center gap-4 text-sm text-gray-500 mb-2">
            <span>👤 adminjg</span>
            <span>📅 19 May 2025</span>
            <span>👁️10</span>
          </div>
            <span className="bg-orange-400 text-white text-xs px-8 py-1 rounded">
              Berita
            </span>
            <br />
            <br />

          {/* Header Image */}
          <div className="relative w-full h-80 mb-4 rounded-lg overflow-hidden">
            <Image
              src="/assets/homepage/article1.png"
              alt="Article Header"
              layout="fill"
              objectFit="cover"
              className="rounded-lg"
              priority
            />
          </div>

          {/* Title */}
          <h1 className="text-2xl md:text-3xl font-bold mb-4">
            Risiko Menjual Mobil Bekas Tanpa Cek Legalitas Pembeli
          </h1>

          {/* Content */}
          <div className="space-y-4 text-gray-700 leading-relaxed">
            <p>
              Menjual mobil bekas memang tampak seperti proses yang mudah dan
              cepat, terutama dengan semakin banyaknya platform jual beli mobil
              secara online. Namun, banyak pemilik mobil yang mengabaikan satu
              aspek penting dalam proses ini, yaitu{" "}
              <strong className="font-semibold">
                risiko legalitas pembeli
              </strong>
              mobil bekas. Pasalnya, tidak memverifikasi identitas dan legalitas
              pembeli dapat membawa konsekuensi hukum dan finansial yang serius
              di kemudian hari. Maka dari itu, sangat penting untuk mengenali
              ciri-ciri modus ini dan tahu bagaimana cara menghindari bahaya
              jual mobil tanpa cek pembeli. Yuk langsung simak saja artikelnya
              di bawah ini.
            </p>
            <h2 className="text-xl font-semibold mt-6">
              Mengapa Cek Legalitas Pembeli itu Penting?
            </h2>
            <p>
              Saat Anda menjual mobil, kendaraan tersebut secara hukum akan
              berpindah kepemilikan. Jika proses ini dilakukan tanpa verifikasi
              menyeluruh terhadap pembeli, Anda berisiko terjebak dalam berbagai
              masalah hukum yang bisa muncul kemudian.{" "}
              <strong className="font-semibold">Bahaya jual mobil tanpa</strong>
              cek pembeli tidak hanya berkaitan dengan pencurian atau penipuan,
              tetapi juga menyangkut pelanggaran hukum lalu lintas, tunggakan
              pajak kendaraan, bahkan keterlibatan dalam tindak kriminal.
            </p>
            <p>Beberapa potensi risiko yang mungkin terjadi:</p>
            <ul className="list-disc list-inside pl-4">
              <li>
                Mobil digunakan untuk tindakan ilegal yang masih terdaftar atas
                nama Anda.
              </li>
              <li>
                Pembeli tidak melakukan balik nama sehingga Anda tetap
                bertanggung jawab atas kewajiban pajak dan tilang.
              </li>
              <li>Pembayaran tidak sah atau menggunakan identitas palsu.</li>
            </ul>
            <h2 className="text-xl font-semibold mt-6">
              Statistik dan Dampak Hukum
            </h2>
            <p>
              Contoh kasus{" "}
              <strong className="font-semibold">
                risiko legalitas pembeli mobil bekas{" "}
              </strong>{" "}
              seperti pemalsuan dokumen kendaraan meningkat. Polres Ciamis
              mengungkap jaringan penjualan kendaraan dengan data surat-surat
              palsu, yang melibatkan pemalsuan STNK dan BPKB. Dalam kasus ini,
              dua orang telah diamankan, dan polisi menyita lima unit mobil yang
              mayoritas adalah LCGC.{" "}
            </p>
            <p>
              Kasus penipuan juga terjadi di Sleman, di mana seorang pelaku
              menawarkan mobil antik dengan dokumen palsu, menyebabkan kerugian
              sebesar Rp 2,5 miliar bagi korban. Pelaku menggunakan foto dan
              video mobil milik orang lain untuk meyakinkan korban.
            </p>
            <p>
              Risiko hukum yang dihadapi oleh penjual kendaraan bekas tanpa
              melakukan cek legalitas saat jual beli mobil sangatlah serius.
              Mereka dapat dikenai pasal-pasal pidana terkait penadahan atau
              pemalsuan dokumen, dengan ancaman hukuman penjara hingga tujuh
              tahun.{" "}
            </p>
            <p>
              Selain itu, penjual juga dapat menghadapi kesulitan dalam klaim
              asuransi, pembayaran pajak, dan proses penjualan kembali kendaraan
              jika dokumen tidak lengkap atau palsu. Hal ini dapat menyebabkan
              kerugian finansial yang signifikan dan reputasi yang tercemar.
            </p>
            <h2 className="text-xl font-semibold mt-6">
              Apa Saja Dampak Risiko Legalitas Pembeli Mobil Bekas?
            </h2>
            <ul className="list-disc list-inside pl-4">
              <li>
                Tanggung Jawab Hukum Tetap di Pemilik Lama: Jika pembeli tidak
                melakukan proses balik nama, semua dokumen hukum masih mencatat
                nama Anda sebagai pemilik kendaraan. Bila mobil terlibat
                pelanggaran hukum atau kecelakaan, Anda bisa terseret ke ranah
                hukum meskipun kendaraan sudah tidak berada di tangan Anda.
              </li>
              <li>
                Denda Pajak dan Tilang Masih Ditagihkan ke Anda: Sistem tilang
                elektronik atau e-TLE saat ini sangat aktif di berbagai kota
                besar. Bila mobil Anda tertangkap melakukan pelanggaran lalu
                lintas, surat tilang dan denda tetap akan dikirim ke alamat yang
                terdaftar, yakni alamat pemilik sebelumnya. Ini adalah salah
                satu risiko legalitas pembeli mobil bekas yang paling sering
                terjadi.
              </li>
              <li>
                Mobil Dijual Lagi Tanpa Prosedur yang Sah: Dalam beberapa kasus,
                pembeli mobil bekas bisa menjual kembali kendaraan tanpa
                mengurus balik nama, menciptakan rantai kepemilikan ilegal. Ini
                memperbesar kemungkinan kendaraan Anda terlibat dalam aktivitas
                ilegal tanpa sepengetahuan Anda.
              </li>
            </ul>
          </div>
        </div>

        {/* Right Sidebar */}
        <div className="md:col-span-4 space-y-8">
          {/* Artikel Terbaru */}
          <div>
            <h2 className="text-3xl font-bold p-4">
              Artikel <span className="text-orange-500">Terbaru</span>
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
                  title:
                    "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak Pusing di Belakang!",
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
                  title:
                    "Cara Jual Mobil Bekas Online dengan Aman dan Proses Cepat",
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
                <div
                  key={index}
                  className="border-b p-4 hover:shadow-xl transform hover:scale-105"
                >
                  <a href={`/article/${item.slug}`}>
                    <span
                      className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 ${
                        item.type === "Tips & Trick"
                          ? "bg-yellow-400 text-white"
                          : "bg-orange-500 text-white"
                      }`}
                    >
                      {item.type}
                    </span>
                    <h3 className="text-sm font-semibold leading-snug">
                      {item.title}
                    </h3>
                    <p className="text-xs text-gray-600 mt-1">{item.desc}</p>
                    <p className="text-xs text-gray-400 mt-2">
                      <span>
                        👤 {item.author} | 📅 {item.date}
                      </span>
                    </p>
                  </a>
                </div>
              ))}
            </div>
          </div>

          {/* Artikel Terkait */}
          <div>
            <h2 className="text-3xl font-bold p-4">
              Artikel <span className="text-orange-500">Terkait</span>
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
                  title:
                    "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak Pusing di Belakang!",
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
                  title:
                    "Cara Jual Mobil Bekas Online dengan Aman dan Proses Cepat",
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
                <div
                  key={index}
                  className="border-b p-4 hover:shadow-xl transform hover:scale-105"
                >
                  <a href={`/article/${item.slug}`}>
                    <span
                      className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 ${
                        item.type === "Tips & Trick"
                          ? "bg-yellow-400 text-white"
                          : "bg-orange-500 text-white"
                      }`}
                    >
                      {item.type}
                    </span>
                    <h3 className="text-sm font-semibold leading-snug">
                      {item.title}
                    </h3>
                    <p className="text-xs text-gray-600 mt-1">{item.desc}</p>
                    <p className="text-xs text-gray-400 mt-2">
                      <span>
                        👤 {item.author} | 📅 {item.date}
                      </span>
                    </p>
                  </a>
                </div>
              ))}
            </div>
          </div>

          <ShareSection />
        </div>
      </div>
    </div>
  );
}
