// app/article/[slug]/page.tsx
import { notFound } from 'next/navigation';
import ArticleDetail from '@/components/section/article/detail';
import Footer from '@/components/core/footer';
import Navbar from '@/components/core/navbar';

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

export async function generateStaticParams() {
  return dummyArticles.map(article => ({
    slug: article.slug,
  }));
}

export default function ArticlePage({ params }: { params: { slug: string } }) {
  const article = dummyArticles.find(
    a => a.slug === params.slug
  );
  if (!article) return notFound();

  return (
    <>
        <Navbar />
        <ArticleDetail/>
        <Footer/>
    </>
  );
}
