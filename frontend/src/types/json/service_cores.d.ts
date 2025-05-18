export interface ServiceCores {
  id: number;
  documentId: string;
  text1: string;
  text2: string;
  background_color: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
  background: Image;
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