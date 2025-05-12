export interface HomepageAchievements {
  data: Achievement[];
}

export interface Achievement {
  id: number;
  documentId: string;
  title: string;
  description: string;
  createdAt: string;
  updatedAt: string;
  publishedAt: string;
}
