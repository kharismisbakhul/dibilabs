import { Articles } from "@/types/json/articles";
import Image from "next/image";
import Link from "next/link";
import { format } from 'date-fns';

const formatDate = (dateString: string) => {
  return format(new Date(dateString), 'dd MMMM yyyy');
};

export default function ArticleCard( article : Articles) {
  return (
    <div className="bg-white rounded-xl shadow-sm border overflow-hidden hover:shadow-xl transform hover:scale-105">
      <Link href={`/article/${article.slug}`}>
        <div className="relative h-48 w-full">
          <Image 
          src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${article.thumbnail.url}`}
          alt={article.thumbnail.name}
          fill 
          className="object-cover" />
          <span className="absolute bottom-2 right-2 bg-orange-500 text-white text-sm px-3 py-1 rounded">
            {article.category}
          </span>
        </div>
        <div className="p-4">
          <h3 className="font-semibold text-lg line-clamp-2">{article.title}</h3>
          <p className="text-sm text-gray-600 line-clamp-2 mt-1">{article.short_desc}</p>
          <div className="mt-3 text-sm text-gray-500 flex items-center gap-2">
            <span>👤 {article.author.username}</span>
            <span>|</span>
            <span>📅 {formatDate(article.publishedAt)}</span>
          </div>
        </div>
      </Link>
    </div>
  );
}
