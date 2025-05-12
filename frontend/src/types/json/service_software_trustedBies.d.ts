export interface ServiceSoftwareTrustedBies {
  data: TrustedBy[];
}

export interface TrustedBy {
  id: number;
  documentId: string;
  name: string;
  logo: Photo;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}

export interface Photo {
  id: number;
  documentId: string;
  name: string;
  alternativeText: string | null;
  caption: string | null;
  width: number;
  height: number;
  formats: ImageFormats;
  hash: string;
  ext: string;
  mime: string;
  size: number;
  url: string;
  previewUrl: string | null;
  provider: string;
  provider_metadata: unknown | null;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}

export interface ImageFormats {
  thumbnail?: ImageFormat;
  small?: ImageFormat;
  medium?: ImageFormat;
  large?: ImageFormat;
}

export interface ImageFormat {
  ext: string;
  url: string;
  hash: string;
  mime: string;
  name: string;
  path: string | null;
  size: number;
  width: number;
  height: number;
  sizeInBytes: number;
}
