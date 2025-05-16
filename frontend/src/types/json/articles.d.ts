export interface Articles {
  id: number;
  documentId: string;
  title: string;
  slug: string;
  content: ContentBlock[];
  category: string;
  published: string;
  is_published: boolean | null;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  image: Photo;
}

export interface ContentBlock {
  type: string;
  children: ContentChild[];
}

export interface ContentChild {
  text: string;
  type: string;
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
  small?: ImageFormat;
  thumbnail?: ImageFormat;
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
