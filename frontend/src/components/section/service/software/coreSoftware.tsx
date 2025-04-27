import Image from "next/image";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function CoreSoftware({ data }: Props) {
  return (
    <>
      <section className="bg-white py-16 px-6 md:px-20">
        {/* Header */}
        <div className="flex flex-col md:flex-row justify-between items-start md:items-center mb-10">
          <div>
            <h2 className="text-[120px] font-bold text-orange-500 leading-none">
              Dibilabs
            </h2>
            <h3 className="text-[200px] font-extrabold text-blue-800 leading-none">
              Core
            </h3>
          </div>
          <div className="relative mt-10 md:mt-0">
            <Image
              src="/assets/service/software/bite-cookies.svg" // Replace with your correct asset path
              alt="Cookie Illustration"
              width={400}
              height={400}
              className="block right-0 z-40"
            />
            <div className="absolute right-[-30px] bottom-[-10px]">
              <Image
                src="/assets/service/software/yum.svg" // Replace with your correct asset path
                alt="YUM!"
                width={100}
                height={100}
              />
            </div>
          </div>
        </div>

        {/* Grid Section */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {/* Card 1 */}
          <div className="rounded-2xl bg-blue-800 relative overflow-hidden text-white text-center">
            <Image
              src="/assets/service/software/core1.svg" // Replace with your correct asset path
              alt="Asterisk"
              width={200}
              height={200}
              className="absolute left-0 bottom-0 opacity-30"
            />
            <div className="relative p-[70px]">
              <p className="text-[52px] font-bold leading-tight">Radical</p>
              <p className="text-[24px]">Transparency</p>
            </div>
          </div>

          {/* Card 2 */}
          <div className="rounded-2xl bg-black relative overflow-hidden text-white text-center">
            <Image
              src="/assets/service/software/core2.svg"
              alt="Asterisk"
              width={200}
              height={200}
              className="absolute left-0 bottom-0 opacity-30"
            />
            <div className="relative p-[70px]">
              <p className="text-[52px] font-bold leading-tight">
                Professional
              </p>
              <p className="text-[24px]">Insight</p>
            </div>
          </div>

          {/* Card 3 */}
          <div className="rounded-2xl bg-orange-500 relative overflow-hidden text-white text-center">
            <Image
              src="/assets/service/software/core3.svg"
              alt="Asterisk"
              width={200}
              height={200}
              className="absolute left-0 bottom-0 opacity-30"
            />
            <div className="relative p-[70px]">
              <p className="text-[52px] font-bold leading-tight">Dedicated</p>
              <p className="text-[24px]">Teams</p>
            </div>
          </div>
        </div>
      </section>
    </>
  );
}
