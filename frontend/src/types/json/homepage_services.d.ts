export interface HomepageServices {
  data: Service[];
}

export interface Service {
  id: number;
  documentId: string;
  name: string;
  description: string;
  icon: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}
