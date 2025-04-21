// src/app/api/submit/route.ts
import { NextRequest, NextResponse } from 'next/server';

export async function POST(req: NextRequest) {
  const body = await req.json();
  const { name, brand, email, number, industry, services } = body;

  console.log('Form Data:', { name, brand, email, number, industry, services });

  return NextResponse.json({ message: 'Form submitted successfully!' }, { status: 200 });
}