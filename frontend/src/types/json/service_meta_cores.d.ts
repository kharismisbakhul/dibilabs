export interface ServiceMetaCores {
  id: number;
  documentId: string;
  title: string;
  description: string;
  background_color: string;
  text_color: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  background_bubble: Image;
}

export interface Image {
  id: number;
  documentId: string;
  name: string;
  alternativeText: string | null;
  caption: string | null;
  width: number;
  height: number;
  formats: unknown;
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