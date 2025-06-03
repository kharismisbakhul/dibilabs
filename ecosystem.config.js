module.exports = {
  apps: [
    {
      name: "frontend-staging",
      cwd: "./frontend",
      script: "npm",
      args: "run dev",
      env: {
        NODE_ENV: "development",
        PORT: 3000
      }
    },
    {
      name: "backend-staging",
      cwd: "./backend",
      script: "npm",
      args: "run dev",
      env: {
        NODE_ENV: "development",
        PORT: 1337
      }
    }
  ]
};
