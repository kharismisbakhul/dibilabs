import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "strapi.dibilabs.id",
        pathname: "/uploads/**",
      },
    ],
  },
};

export default nextConfig;
