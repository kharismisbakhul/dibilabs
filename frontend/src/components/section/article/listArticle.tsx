import { Articles } from "@/types/json/articles";
import Image from "next/image";
import Link from "next/link";
import { format } from 'date-fns';

type Props = {
  data: Articles[]; // or Record<string, any>[]
};

const formatDate = (dateString: string) => {
  return format(new Date(dateString), 'dd MMMM yyyy');
};

export default function ListArticle({ data }: Props) {
  const sorted = data.sort(
    (a, b) => new Date(b.publishedAt).getTime() - new Date(a.publishedAt).getTime()
  );
  const sortedByDateDesc = sorted.slice(0, 8);
  return (
    <div className="container mx-auto px-8 md:px-4 py-8 pt-36">
      <div className="grid md:grid-cols-3 gap-6">
        <div className="md:col-span-2">
          <h2 className="text-3xl font-bold mb-4">
            Artikel <span className="text-orange-500">Terbaru</span>
          </h2>

          <div className="grid md:grid-cols-2 gap-6">

            {sortedByDateDesc.map((item, index) => (
              <div key={index} className="bg-white rounded-lg shadow overflow-hidden hover:shadow-xl transform hover:scale-105">
                <Link href={`/article/${item.slug}`}>
                  <div className="relative w-full h-48">
                    <Image
                      src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.thumbnail.url}`}
                      alt={item.thumbnail.name}
                      layout="fill"
                      objectFit="cover"
                    />
                    <span className="absolute bottom-0 right-0 bg-orange-500 text-white text-xs font-semibold px-2 py-1 m-2 rounded">
                      {item.category}
                    </span>
                  </div>
                  <div className="p-4">
                    <h3 className="text-lg font-semibold">
                      {item.title}
                    </h3>
                    <p className="text-sm text-gray-600 mt-2">
                      {item.short_desc}
                    </p>
                    <div className="flex items-center gap-2 text-xs text-gray-400 mt-4">
                      <span>👤 {item.author.username}</span>
                      <span>|</span>
                      <span>📅 {formatDate(item.publishedAt)}</span>
                    </div>
                  </div>
                </Link>
              </div>
            ))}
            
          </div>
        </div>

        {/* Rekomendasi Kami */}
        <div>
          <h2 className="text-3xl font-bold p-4">
            Rekomendasi <span className="text-orange-500">Kami</span>
          </h2>
          <div className="space-y-4">
            {sortedByDateDesc.map((item, index) => (
              <div key={index} className="border-b p-4 hover:shadow-xl transform hover:scale-105">
                <Link href={`/article/${item.slug}`}>
                  <span className={`inline-block text-xs font-semibold px-2 py-1 rounded mb-2 bg-orange-500 text-white`}>
                    {item.category}
                  </span>
                  <h3 className="text-sm font-semibold leading-snug">
                    {item.title}
                  </h3>
                  <p className="text-xs text-gray-600 mt-1">
                      {item.short_desc}
                  </p>
                  <p className="text-xs text-gray-400 mt-2"><span>👤 {item.author.username} | 📅 {formatDate(item.publishedAt)}</span></p>
                </Link>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}
