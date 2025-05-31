import About from "@/components/section/about";
import { getAboutTeamsData, getAboutPhotoData } from "@/lib/strapi_about";

export const metadata = {
  title: "About Us",
  description: "Read the latest news and updates from our brand.",
};

export default async function Home() {
  const [teams, photo] = await Promise.all([
      getAboutTeamsData(),
      getAboutPhotoData(),
    ]);

  return (
    <>
      <About teams={teams} photo={photo}/>
    </>
  );
}
