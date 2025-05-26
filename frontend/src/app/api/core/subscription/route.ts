// src/app/api/submit/route.ts
import { NextRequest, NextResponse } from 'next/server';

export async function POST(req: NextRequest) {
  const body = await req.json();
  const email = body;

  const STRAPI_URL = 'http://127.0.0.1:1337/api/subscriptions';

  try {
    const payload = {
      data: {
        email
      }
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
    return NextResponse.json({ message: 'Thank you for joining our Newsletter', status: 200 });
  } catch (err) {
    console.error("[api/homepage] fetch failed:", err);

    const message = err instanceof Error ? err.message : "Unknown error";

    return NextResponse.json(
      { message: "Internal Server Error", error: message },
      { status: 500 }
    );
  }

}