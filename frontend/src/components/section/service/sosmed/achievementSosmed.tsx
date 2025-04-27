import Image from "next/image";

type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function AchievementSosmed({ data }: Props) {
  return (
    <>
      <section className="relative bg-white py-12 px-4 md:px-0 flex justify-center">
      <div className="text-center">
        <h2 className="text-[32px] md:text-[36px] font-light text-black">
          We’ve <span className="font-bold text-[#F37021]">Achieved</span>
        </h2>

        <div className="mt-8 space-y-3">
          {/* Followers Growth */}
          <div className="flex items-center justify-left">
            <div className="bg-[#F37021] text-white px-4 flex justify-left items-center">
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: '#0055A4',
                }}>1000%</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[24px] leading-none">Followers</p>
                <p className="text-[24px] leading-none">Growth</p>
              </div>
            </div>
          </div>

          {/* Profile Visit */}
          <div className="flex items-center justify-left">
            <div className="bg-[#1A1A1A] text-white px-4 flex justify-left items-center">
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: '#F37021',
                }}>500%</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[24px] leading-none">Increase in</p>
                <p className="text-[24px] leading-none">Profile Visit</p>
              </div>
            </div>
          </div>

          {/* ER Contents */}
          <div className="flex items-center justify-left">
            <div className="bg-[#0055A4] text-white px-4 flex justify-left items-center">
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: '#F37021',
                }}>10%</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[24px] leading-none">ER</p>
                <p className="text-[24px] leading-none">Contents</p>
              </div>
            </div>
          </div>

          {/* Verified Account */}
          <div className="flex items-center justify-left">
            <div className="bg-[#F37021] text-white px-4 py-2 flex items-center gap-2">
              <Image src="/assets/service/sosmed/verified.png" alt="Verified" width={60} height={60} />
              <span className="text-[24px] font-medium leading-none ml-4">
                Verified <br className="block md:hidden" /> Account
              </span>
            </div>
          </div>
        </div>

        {/* Asterisks */}
        <Image
          src="/assets/service/sosmed/sharp_top.svg"
          alt="asterisk orange"
          width={100}
          height={100}
          className="absolute top-5 right-[500px]"
        />
        <Image
          src="/assets/service/sosmed/sharp_bottom.svg"
          alt="asterisk black"
          width={150}
          height={150}
          className="absolute bottom-2 left-[400px]"
        />
      </div>
    </section>
    </>
  );
}
