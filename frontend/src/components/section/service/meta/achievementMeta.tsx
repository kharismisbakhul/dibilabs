type Props = {
  data: any[]; // or Record<string, any>[]
};

export default function AchievementMeta({ data }: Props) {
  return (
    <>
      <section className="relative bg-white py-12 px-4 md:px-0 flex justify-center">
      <div className="text-center">
        <h2 className="text-[32px] md:text-[36px] font-light text-black">
          Numbers <span className="font-bold text-[#F37021]">Don&apos;t Lie</span>
        </h2>

        <div className="mt-8 space-y-3">
          {/* Reduced Customer */}
          <div className="flex items-center justify-center">
            <div className="bg-[#F37021] text-white px-4 flex justify-center items-center rounded-lg">
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: '#0055A4',
                }}>2000%</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[24px] leading-none">Growth in Revenue</p>
                <p className="text-[24px] leading-none">from Advertising</p>
              </div>
            </div>
          </div>

          {/* Leads Generated */}
          <div className="flex items-center justify-center">
            <div className="bg-[#1A1A1A] text-white px-4 flex justify-center items-center rounded-lg w-[450px]">
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: '#F37021',
                }}>900+</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[24px] leading-none">Leads Generated</p>
                <p className="text-[24px] leading-none">Monthly</p>
              </div>
            </div>
          </div>

          {/* Qualified Leads */}
          <div className="flex items-center justify-center">
            <div className="bg-[#0055A4] text-white px-4 flex justify-center items-center rounded-lg w-[500px]">
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: '#F37021',
                }}>90%</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[24px] leading-none">Qualified Leads</p>
                <p className="text-[24px] leading-none">for Sales</p>
              </div>
            </div>
          </div>

          {/* Managed */}
          <div className="flex items-center justify-center">
            <div className="bg-[#F37021] text-white px-4 flex justify-center items-center rounded-lg">
              <span className="text-[60px] font-extrabold text-white">
                <span className="px-2" style={{
                    WebkitTextStroke: '2px white',
                    WebkitTextFillColor: '#0055A4',
                }}>Rp 5 Bio</span>
              </span>
              <div className="text-left ml-4">
                <p className="text-[24px] leading-none">Managed</p>
                <p className="text-[24px] leading-none">Multiple platforms</p>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section>
    </>
  );
}
