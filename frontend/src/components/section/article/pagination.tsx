type PaginationProps = {
  current: number;
  total: number;
  onPageChange: (page: number) => void;
};

export default function Pagination({ current, total, onPageChange }: PaginationProps) {
  const generatePages = () => {
    const delta = 2;
    const range = [];
    const rangeWithDots = [];
    let l: number;

    for (let i = 1; i <= total; i++) {
      if (i === 1 || i === total || (i >= current - delta && i <= current + delta)) {
        range.push(i);
      }
    }

    for (let i of range) {
      if (l) {
        if (i - l === 2) {
          rangeWithDots.push(l + 1);
        } else if (i - l !== 1) {
          rangeWithDots.push("...");
        }
      }
      rangeWithDots.push(i);
      l = i;
    }

    return rangeWithDots;
  };

  const pages = generatePages();

  return (
    <div className="flex justify-center items-center mt-8 space-x-2">
      <button
        className="border px-3 py-1 rounded disabled:opacity-50"
        onClick={() => onPageChange(current - 1)}
        disabled={current === 1}
      >
        &lt;
      </button>

      {pages.map((page, index) =>
        typeof page === "number" ? (
          <button
            key={index}
            className={`border px-3 py-1 rounded ${
              current === page ? "bg-orange-500 text-white" : ""
            }`}
            onClick={() => onPageChange(page)}
          >
            {page}
          </button>
        ) : (
          <span key={index} className="px-2 text-gray-500">
            {page}
          </span>
        )
      )}

      <button
        className="border px-3 py-1 rounded disabled:opacity-50"
        onClick={() => onPageChange(current + 1)}
        disabled={current === total}
      >
        &gt;
      </button>
    </div>
  );
}
