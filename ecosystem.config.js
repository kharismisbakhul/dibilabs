module.exports = {
  apps: [
    {
      name: "frontend-production",
      cwd: "./frontend",
      script: "npm",
      args: "start",
      env: {
        NODE_ENV: "production",
      }
    },
    {
      name: "backend-production",
      cwd: "./backend",
      script: "npm",
      args: "start",
      env: {
        NODE_ENV: "production",
        HOST: "127.0.0.1",
        PORT: 1337
      }
    },
    {
      name: "frontend-staging",
      cwd: "./frontend",
      script: "npm",
      args: "start",
      env: {
        NODE_ENV: "production",
      }
    },
    {
      name: "backend-staging",
      cwd: "./backend",
      script: "npm",
      args: "start",
      env: {
        NODE_ENV: "production",
        HOST: "127.0.0.1",
        PORT: 1338
      }
    }
  ]
};
