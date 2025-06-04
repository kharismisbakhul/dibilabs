import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";
// import ResponsiveWrapper from "@/components/core/responsiveWrapper";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

export const metadata: Metadata = {
  title: {
    default: "Dibilabs",              // Fallback title
    template: "%s | Dibilabs",        // Title format
  },
  description: "Your digital marketing agency partner to develop your products.",
  keywords: "blog, news, marketing, ads, development, web, apps, seo",
  icons: {
    icon: "/favicon.ico",    // This is the key line you need
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased bg-white text-black`}
      >
        {/* <ResponsiveWrapper> ✅ Wrap children here */}
          {children}
        {/* </ResponsiveWrapper> */}
      </body>
    </html>
  );
}
