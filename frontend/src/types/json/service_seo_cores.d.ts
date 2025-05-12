export interface ServiceSeoCores {
  data: ServiceCore[];
}

export interface ServiceCore {
  id: number;
  documentId: string;
  title: string;
  description: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}
