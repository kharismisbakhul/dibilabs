export interface ServiceCards {
  data: ServiceCard[];
}

export interface ServiceCard {
  id: number;
  documentId: string;
  title: string;
  description: string;
  icon: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}
