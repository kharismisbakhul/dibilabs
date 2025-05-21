'use client';

import { FaFacebookF, FaShareAlt } from 'react-icons/fa';

export default function ShareSection() {
  const shareUrl = typeof window !== 'undefined' ? window.location.href : '';
  const shareText = 'Check out this article!';

  const handleNativeShare = () => {
    if (navigator.share) {
      navigator
        .share({
          title: document.title,
          text: shareText,
          url: shareUrl,
        })
        .catch((err) => console.error('Error sharing:', err));
    } else {
      alert('Sharing is not supported in your browser.');
    }
  };

  const handleFacebookShare = () => {
    const fbUrl = `https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(shareUrl)}`;
    window.open(fbUrl, '_blank', 'noopener,noreferrer');
  };

  return (
    <div className="flex flex-col items-start space-y-2">
      <h2 className="font-semibold text-lg">Share</h2>
      <div className="flex space-x-4">
        <button
          onClick={handleFacebookShare}
          className="bg-orange-400 hover:bg-orange-500 text-white p-2 rounded-full"
        >
          <FaFacebookF size={16} />
        </button>
        <button
          onClick={handleNativeShare}
          className="bg-orange-400 hover:bg-orange-500 text-white p-2 rounded-full"
        >
          <FaShareAlt size={16} />
        </button>
      </div>
    </div>
  );
}
