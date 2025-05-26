// src/app/api/submit/route.ts
import { NextRequest, NextResponse } from 'next/server';

export async function POST(req: NextRequest) {
  const body = await req.json();
  const { name, brand, email, number, industry, services } = body;

  const STRAPI_URL = 'http://127.0.0.1:1337/api/form-ctas';

  try {
    const payload = {
      data: {
        name,
        brand,
        email,
        whatsapp: number,
        industry,
        services,
      },
    };

    const strapiRes = await fetch(STRAPI_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(payload)
    });

    if (!strapiRes.ok) {
      const text = await strapiRes.text();
      console.error("[api/homepage] Strapi error payload:", text);
      return NextResponse.json(
        { message: "Error from Strapi", details: text },
        { status: strapiRes.status }
      );
    }

    // const data = await strapiRes.json();
    return NextResponse.json({ message: 'Thank you for Submitting to our Form, we are going to contact you soon!', status: 200 });
  } catch (err) {
    console.error("[api/homepage] fetch failed:", err);

    const message = err instanceof Error ? err.message : "Unknown error";

    return NextResponse.json(
      { message: "Internal Server Error", error: message },
      { status: 500 }
    );
  }

}