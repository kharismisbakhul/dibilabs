export interface Articles {
  id: number;
  documentId: string;
  title: string;
  slug: string;
  short_desc: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  content: string;
  category: string;
  published: string;
  is_published: boolean;
  view: string;
  thumbnail: ArticleThumbnail;
  author: Author;
}

interface Author {
  id: number;
  documentId: string;
  username: string;
  email: string;
  provider: string;
  confirmed: boolean;
  blocked: boolean;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}

export interface ArticleThumbnail {
  id: number;
  documentId: string;
  name: string;
  alternativeText: string | null;
  caption: string | null;
  width: number;
  height: number;
  formats: {
    small?: ArticleFormat;
    thumbnail?: ArticleFormat;
  };
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

export interface ArticleFormat {
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
