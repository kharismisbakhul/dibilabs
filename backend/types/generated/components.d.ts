import type { Schema, Struct } from '@strapi/strapi';

export interface ServiceService extends Struct.ComponentSchema {
  collectionName: 'components_service_services';
  info: {
    displayName: 'Service';
  };
  attributes: {
    service_description: Schema.Attribute.Blocks;
    service_icon: Schema.Attribute.Media<
      'images' | 'files' | 'videos' | 'audios'
    >;
    service_title: Schema.Attribute.String;
  };
}

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
      'service.service': ServiceService;
      'testimonial.testimonials': TestimonialTestimonials;
    }
  }
}
