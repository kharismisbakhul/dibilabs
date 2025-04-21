// src/app/api/homepage/route.ts
import { NextResponse } from 'next/server';

export async function GET() {
  const baseUrl = process.env.NEXT_PUBLIC_STRAPI_URL;
  const STRAPI_URL = `${baseUrl}/api/seo-achievements?populate=*`;

  try {
    const strapiRes = await fetch(STRAPI_URL);

    if (!strapiRes.ok) {
      const text = await strapiRes.text();
      console.error("[api/homepage] Strapi error payload:", text);
      return NextResponse.json(
        { message: "Error from Strapi", details: text },
        { status: strapiRes.status }
      );
    }

    const data = await strapiRes.json();
    return NextResponse.json(data);
  } catch (err: any) {
    console.error("[api/homepage] fetch failed:", err);
    return NextResponse.json(
      { message: "Internal Server Error", error: err.message },
      { status: 500 }
    );
  }
}
