// pages/article/[slug].tsx
"use client";

import Link from "next/link";
// import { useRouter } from 'next/router';
// import { Articles } from "@/types/json/articles";
// import { FaFacebookF, FaShareAlt } from "react-icons/fa";
import ShareSection from "./shareSection";
import Image from "next/image";
import { Articles } from "@/types/json/articles";
import { format } from 'date-fns';

import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import rehypeSanitize from "rehype-sanitize";
import rehypeHighlight from "rehype-highlight";
import "highlight.js/styles/github.css"; // or another style

const formatDate = (dateString: string) => {
  return format(new Date(dateString), 'dd MMMM yyyy');
};

interface ArticleReadProps {
  articles: Articles;
  data: Articles[];
}

export default function ArticleRead( { articles, data }: ArticleReadProps) {
  const allArticles = data;
  const sortedByDateDesc = allArticles.sort(
    (a, b) => new Date(b.publishedAt).getTime() - new Date(a.publishedAt).getTime()
  );
  const sameCategoriesArtikel = sortedByDateDesc.filter(article => article.category === articles.category);
  return (
    <div className="max-w-7xl mx-auto px-4 py-8 pt-36">
      {/* Breadcrumb */}
      <nav className="text-sm mb-4 text-gray-500">
        <Link href="/article">
          <span>List Article</span>
        </Link>{" "}
        &gt;{" "}
        <span className="text-bold">
          {articles.title}
        </span>
        {/* <span className="text-black font-medium">{slug}</span> */}
      </nav>

      {/* Main Layout */}
      <div className="grid grid-cols-1 md:grid-cols-12 gap-8">
        {/* Left Content */}
        <div className="md:col-span-8">
          {/* Meta */}
          <div className="flex items-center gap-4 text-sm text-gray-500 mb-2">
            <span>👤 {articles.author.username}</span>
            <span>📅 {formatDate(articles.publishedAt)}</span>
            <span>👁️ {articles.view}</span>
          </div>
            <span className="bg-orange-400 text-white text-xs px-8 py-1 rounded">
              {articles.category}
            </span>
            <br />
            <br />

          {/* Header Image */}
          <div className="relative w-full h-80 mb-4 rounded-lg overflow-hidden">
            <Image
              src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${articles.thumbnail.url}`}
              alt={articles.thumbnail.name}
              layout="fill"
              objectFit="cover"
              className="rounded-lg"
              priority
            />
          </div>

          {/* Title */}
          <h1 className="text-2xl md:text-3xl font-bold mb-4">
            {articles.title}
          </h1>

          {/* Content */}
          <article className="prose prose-lg max-w-none">
            <ReactMarkdown
              remarkPlugins={[remarkGfm]}
              rehypePlugins={[rehypeSanitize, rehypeHighlight]}
            >
              {articles.content}
            </ReactMarkdown>
          </article>
          {/* <div className="space-y-4 text-gray-700 leading-relaxed">
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
          </div> */}
        </div>

        {/* Right Sidebar */}
        <div className="md:col-span-4 space-y-8">
          {/* Artikel Terbaru */}
          <div>
            <h2 className="text-3xl font-bold p-4">
              Artikel <span className="text-orange-500">Terbaru</span>
            </h2>
            <div className="space-y-4">
              {sortedByDateDesc.map((item, index) => (
                <div
                  key={index}
                  className="border-b p-4 hover:shadow-xl transform hover:scale-105"
                >
                  <Link href={`/article/${item.slug}`}>
                    <span
                      className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 bg-orange-500 text-white`}
                    >
                      {item.category}
                    </span>
                    <h3 className="text-sm font-semibold leading-snug">
                      {item.title}
                    </h3>
                    <p className="text-xs text-gray-600 mt-1">{item.short_desc}</p>
                    <p className="text-xs text-gray-400 mt-2">
                      <span>
                        👤 {item.author.username} | 📅 {formatDate(articles.publishedAt)}
                      </span>
                    </p>
                  </Link>
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
              {sameCategoriesArtikel.map((item, index) => (
                <div
                  key={index}
                  className="border-b p-4 hover:shadow-xl transform hover:scale-105"
                >
                  <Link href={`/article/${item.slug}`}>
                    <span
                      className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 bg-orange-500 text-white`}
                    >
                      {item.category}
                    </span>
                    <h3 className="text-sm font-semibold leading-snug">
                      {item.title}
                    </h3>
                    <p className="text-xs text-gray-600 mt-1">{item.short_desc}</p>
                    <p className="text-xs text-gray-400 mt-2">
                      <span>
                        👤 {item.author.username} | 📅 {formatDate(articles.publishedAt)}
                      </span>
                    </p>
                  </Link>
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
