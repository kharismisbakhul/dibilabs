import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  // webpack: (config, { isServer }) => {
  //   if (!isServer) {
  //     config.resolve.fallback = {
  //       fs: false, // Prevents 'fs' from causing issues in the browser
  //     };
  //   }
  //   return config;
  // },
};

export default nextConfig;
