import type { Schema, Struct } from '@strapi/strapi';

export interface TestimonialTestimonials extends Struct.ComponentSchema {
  collectionName: 'components_testimonial_testimonials';
  info: {
    displayName: 'testimonials';
  };
  attributes: {
    avatar: Schema.Attribute.Media<'images' | 'files' | 'videos' | 'audios'>;
    message: Schema.Attribute.RichText;
    name: Schema.Attribute.String;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'testimonial.testimonials': TestimonialTestimonials;
    }
  }
}
