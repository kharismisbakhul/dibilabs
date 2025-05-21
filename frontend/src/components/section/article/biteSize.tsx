import ArticleCard from "./articleCard";
import Pagination from "./pagination";
// import { Articles } from "@/types/json/articles";
import { useState } from "react";

// type Props = {
//   data: Articles[]; // or Record<string, any>[]
// };

const dummyArticles = [
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
  {
    image: "/assets/homepage/article3.png",
    title:
      "Jangan sampai rugi! ini Cara Mudah Jual Mobil Bekas dengan Cepat dan...",
    slug: 'jangan-sampai-rugi-ini-cara-mudah-jual-mobil-bekas-dengan-cepat-dan',
    desc: "Tips jual mobil bekas dengan proses cepat dan aman agar tetap untung meski kondisi bekas...",
    author: "adminqiv",
    date: "11 February 2025",
  },
  {
    image: "/assets/homepage/article2.png",
    title:
      "Perbandingan Antara Jual Mobil Bekas ke Dealer, Platform Online, atau...",
    slug: 'perbandingan-antara-jual-mobil-bekas-ke-dealer-platform-online-atau',
    desc: "Cara mudah jual mobil bekas dengan cepat dan aman agar proses lancar serta menguntungkan...",
    author: "adminqiv",
    date: "10 February 2025",
  },
  {
    image: "/assets/homepage/article1.png",
    title:
      "Pahami Ini Dulu! Dokumen Jual Mobil yang Wajib Disiapkan Biar Nggak...",
    slug: 'pahami-ini-dulu-dokumen-jual-mobil-yang-wajib-disiapkan-biar-nggak',
    desc: "Pahami dokumen jual mobil yang wajib disiapkan agar proses lancar dan bebas masalah di belakang...",
    author: "adminqiv",
    date: "18 May 2025",
  },
];

const ITEMS_PER_PAGE = 3;

export default function BiteSizePage() {
  const [currentPage, setCurrentPage] = useState(1);
  const totalPages = Math.ceil(dummyArticles.length / ITEMS_PER_PAGE);
  const startIndex = (currentPage - 1) * ITEMS_PER_PAGE;
  const currentArticles = dummyArticles.slice(startIndex, startIndex + ITEMS_PER_PAGE);

  return (
    <div className="mx-8 md:mx-24 py-10">
      <h2 className="text-2xl font-bold text-orange-500 mb-2">Bite Size Strategies</h2>
      <hr className="border-orange-500 mb-6" />
      <div className="grid md:grid-cols-3 gap-6">
        {currentArticles.map((item, index) => (
          <ArticleCard key={index} {...item} />
        ))}
      </div>
      <div className="flex items-center justify-between mt-10">
        <p className="text-sm text-gray-700">
          Total: <span className="font-bold">{dummyArticles.length} Data</span>
        </p>
        <div className="flex items-center h-full">
          <Pagination 
            current={currentPage}
            total={totalPages}
            onPageChange={setCurrentPage} 
          />
        </div>
      </div>
    </div>
  );
}
