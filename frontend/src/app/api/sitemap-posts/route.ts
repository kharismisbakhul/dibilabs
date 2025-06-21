import { SitemapStream, streamToPromise } from 'sitemap';
import { Readable } from 'stream';
import axios from 'axios';
import { NextResponse } from 'next/server';
import { Articles } from '@/types/json/articles';

const baseUrl = 'https://dibilabs.id';

export async function GET() {
  try {
    const res = await axios.get('https://strapi.dibilabs.id/api/articles?populate=*');
    const posts = res.data;

    const links = posts.map((post: Articles) => ({
      url: `/article/${post.slug}`,
      changefreq: 'weekly',
      priority: 0.8,
    }));

    const stream = new SitemapStream({ hostname: baseUrl });
    const xml = await streamToPromise(Readable.from(links).pipe(stream)).then((data) =>
      data.toString()
    );

    return new NextResponse(xml, {
      status: 200,
      headers: {
        'Content-Type': 'application/xml',
      },
    });
  } catch (error) {
    console.error("Error generating sitemap data:", error);
    return new NextResponse('Error generating dynamic sitemap', { status: 500 });
  }
}
