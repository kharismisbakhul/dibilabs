// components/RichTextRenderer.tsx

import React from "react";
import Image from "next/image";

type Node = {
  type?: string;
  text?: string;
  bold?: boolean;
  italic?: boolean;
  underline?: boolean;
  url?: string;
  children?: Node[];
};

type RichTextImageNode = {
  type: "image";
  url: string;
  alt?: string;
  [key: string]: unknown;
};

interface RichTextRendererProps {
  content: Node[];
}

const renderNode = (node: Node, index: number): React.ReactNode => {
  // Handle text leaf nodes
  if (!node.type && node.text) {
    let text = <>{node.text}</>;

    if (node.bold) {
      text = <strong>{text}</strong>;
    }
    if (node.italic) {
      text = <em>{text}</em>;
    }
    if (node.underline) {
      text = <u>{text}</u>;
    }

    return <React.Fragment key={index}>{text}</React.Fragment>;
  }

  // Handle element nodes
  const children = node.children?.map((child, i) => renderNode(child, i));

  switch (node.type) {
    case "paragraph":
      return <p key={index}>{children}</p>;
    case "heading":
    case "heading-one":
      return <h1 key={index}>{children}</h1>;
    case "heading-two":
      return <h2 key={index}>{children}</h2>;
    case "heading-three":
      return <h3 key={index}>{children}</h3>;
    case "quote":
      return <blockquote key={index}>{children}</blockquote>;
    case "list":
    case "bulleted-list":
      return (
        <ul key={index} className="list-disc ml-5">
          {children}
        </ul>
      );
    case "numbered-list":
      return (
        <ol key={index} className="list-decimal ml-5">
          {children}
        </ol>
      );
    case "list-item":
      return <li key={index}>{children}</li>;
    case "link":
      return (
        <a key={index} href={node.url} className="text-blue-600 underline">
          {children}
        </a>
      );
    case "image": {
      const imageNode = node as RichTextImageNode;
      const src = imageNode.url?.startsWith("/")
        ? `${process.env.NEXT_PUBLIC_STRAPI_URL}${imageNode.url}`
        : imageNode.url;

      const alt = imageNode.alt || "Image";

      if (!src) return null;

      return (
        <div
          key={index}
          className="my-4 rounded overflow-hidden relative w-full max-w-[600px] h-auto"
        >
          <Image
            src={src}
            alt={alt}
            width={600}
            height={400}
            className="rounded object-cover"
            layout="responsive"
          />
        </div>
      );
    }
    default:
      return <div key={index}>{children}</div>;
  }
};

const RichTextRenderer = ({ content }: RichTextRendererProps) => {
  return <div className="prose max-w-none">{content.map(renderNode)}</div>;
};

export default RichTextRenderer;
