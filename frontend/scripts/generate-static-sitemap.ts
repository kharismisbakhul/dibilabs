import fs from 'fs';
import { SitemapStream, streamToPromise } from 'sitemap';
import { Readable } from 'stream';

const baseUrl = 'https://dibilabs.id';

async function generateStaticSitemap() {
  const links = [
    { url: '/', changefreq: 'monthly', priority: 1.0 },
    { url: '/about', changefreq: 'yearly', priority: 0.7 },
    { url: '/article', changefreq: 'yearly', priority: 0.7 },
    { url: '/contact', changefreq: 'yearly', priority: 0.7 },
    { url: '/service', changefreq: 'yearly', priority: 0.7 },
    { url: '/service/google', changefreq: 'yearly', priority: 0.7 },
    { url: '/service/meta', changefreq: 'yearly', priority: 0.7 },
    { url: '/service/seo', changefreq: 'yearly', priority: 0.7 },
    { url: '/service/software', changefreq: 'yearly', priority: 0.7 },
    { url: '/service/sosmed', changefreq: 'yearly', priority: 0.7 },
    { url: '/service/webdev', changefreq: 'yearly', priority: 0.7 },
  ];

  const stream = new SitemapStream({ hostname: baseUrl });
  const xml = await streamToPromise(Readable.from(links).pipe(stream)).then((data) =>
    data.toString()
  );

  fs.writeFileSync('public/sitemap-static.xml', xml);

  // Generate the sitemap index
  const indexXml = `<?xml version="1.0" encoding="UTF-8"?>
  <sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <sitemap>
      <loc>${baseUrl}/sitemap-static.xml</loc>
    </sitemap>
    <sitemap>
      <loc>${baseUrl}/api/sitemap-posts</loc>
    </sitemap>
  </sitemapindex>`;

  fs.writeFileSync('public/sitemap.xml', indexXml);
}

generateStaticSitemap();
