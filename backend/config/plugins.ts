export default ({ env }) => ({
    navigation: {
      enabled: true,
      config: {
        contentTypes: ['api::article.article'], // Allow navigation for articles
      },
    },

    email: {
        config: {
          provider: "nodemailer",
          providerOptions: {
            host: env("SMTP_HOST", "smtp.gmail.com"),
            port: env("SMTP_PORT", 587),
            auth: {
              user: env("SMTP_USER"),
              pass: env("SMTP_PASS"),
            },
          },
          settings: {
            defaultFrom: env("SMTP_USER"),
            defaultReplyTo: env("SMTP_USER"),
          },
        },
      },
  });