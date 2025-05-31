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

export default function ArticlesH({ data }: Props) {
  const sortedByDateDesc = data.sort(
    (a, b) => new Date(b.publishedAt).getTime() - new Date(a.publishedAt).getTime()
  );
  const latestFour = sortedByDateDesc.slice(0, 4);
  const lengthArticle = latestFour.length;

  return (
    <>
      {/* Article */}
      <section className="relative bg-white">
        {/* Article cards */}
        <div className={`grid grid-cols-${lengthArticle} md:grid-cols-${lengthArticle}`}>
          {latestFour.map((item, idx) => (
            <div key={idx} className="h-[250px] md:h-[350px] overflow-hidden shadow-md hover:shadow-xl transform hover:scale-105">
              <Link href={`/article/${item.slug}`}>
              <div className="relative w-full h-full">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_URL}${item.thumbnail.url}`}
                  alt={item.thumbnail.name}
                  fill
                  className="object-cover"
                  sizes="(max-width: 768px) 100vw, 33vw"
                />
                {/* Overlay */}
                <div className="absolute inset-0 bg-black bg-opacity-50 p-4 flex flex-col justify-end text-white">
                  <h3 className="text-sm md:text-lg font-semibold leading-tight mb-2">
                    {item.title}
                  </h3>
                  <p className="text-xs md:text-base">
                    <span>📅 {formatDate(item.publishedAt)}</span>
                  </p>
                </div>
              </div>
              </Link>
            </div>
          ))}
        </div>

        {/* Browse Articles Button */}
        {/* <div className="flex justify-end pt-8 pb-10 bg-black">
          <button className="bg-blue-600 text-white font-medium text-sm px-6 mr-8 py-2 rounded-full flex items-center gap-2 hover:bg-blue-700 transition">
            Browse Articles <span className="text-xl">→</span>
          </button>
        </div> */}
      </section>
    </>
  );
}
