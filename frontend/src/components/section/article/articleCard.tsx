import Image from "next/image";
import Link from "next/link";

interface ArticleCardProps {
  image: string;
  title: string;
  slug: string;
  author: string;
  desc: string;
  date: string;
}

export default function ArticleCard({ image, title, slug, desc, date }: ArticleCardProps) {
  return (
    <div className="bg-white rounded-xl shadow-sm border overflow-hidden hover:shadow-xl transform hover:scale-105">
      <Link href={`/article/${slug}`}>
        <div className="relative h-48 w-full">
          <Image src={image} alt={title} fill className="object-cover" />
          <span className="absolute bottom-2 right-2 bg-orange-500 text-white text-sm px-3 py-1 rounded">
            Berita
          </span>
        </div>
        <div className="p-4">
          <h3 className="font-semibold text-lg line-clamp-2">{title}</h3>
          <p className="text-sm text-gray-600 line-clamp-2 mt-1">{desc}</p>
          <div className="mt-3 text-sm text-gray-500 flex items-center gap-2">
            <span>📅</span> {date}
          </div>
        </div>
      </Link>
    </div>
  );
}
