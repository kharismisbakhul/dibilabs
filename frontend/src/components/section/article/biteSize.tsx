'use client'

import ArticleCard from "./articleCard";
import Pagination from "./pagination";
import { Articles } from "@/types/json/articles";
import { useState } from "react";

type Props = {
  data: Articles[]; // or Record<string, any>[]
};

const ITEMS_PER_PAGE = 3;

export default function BiteSizePage({ data }: Props) {
  const biteSizeArticles = data.filter(article => article.category === "Bite Size Strategies");
  const sortedByDateDesc = biteSizeArticles.sort(
    (a, b) => new Date(b.publishedAt).getTime() - new Date(a.publishedAt).getTime()
  );
  const [currentPage, setCurrentPage] = useState(1);
  const totalPages = Math.ceil(sortedByDateDesc.length / ITEMS_PER_PAGE);
  const startIndex = (currentPage - 1) * ITEMS_PER_PAGE;
  const currentArticles = sortedByDateDesc.slice(startIndex, startIndex + ITEMS_PER_PAGE);

  return (
    <div className="mx-8 md:mx-24 py-4 md:py-10">
      <p className="text-2xl md:text-2xl font-bold text-orange-500 mb-2">Bite Size Strategies</p>
      <hr className="border-orange-500 mb-6" />
      <div className="grid md:grid-cols-3 gap-6">
        {currentArticles.map((item, index) => (
          <ArticleCard key={index} {...item} />
        ))}
      </div>
      <div className="flex items-center justify-between mt-5 md:mt-10">
        <p className="text-xs md:text-sm text-gray-700">
          Total: <span className="font-bold">{sortedByDateDesc.length} Data</span>
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
