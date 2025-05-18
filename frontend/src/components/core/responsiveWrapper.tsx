"use client";
import { useEffect, useState } from "react";

export default function ResponsiveWrapper({ children }: { children: React.ReactNode }) {
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const checkScreenSize = () => {
      setIsMobile(window.innerWidth < 1280);
    };

    checkScreenSize(); // On first load
    window.addEventListener("resize", checkScreenSize);
    return () => window.removeEventListener("resize", checkScreenSize);
  }, []);

  if (isMobile) {
    return (
      <div className="flex items-center justify-center min-h-screen bg-orange-500 px-4">
        <h1 className="text-2xl font-semibold text-white text-center">
          Sorry, the responsive version is still being developed.
        </h1>
      </div>
    );
  }

  return <>{children}</>;
}