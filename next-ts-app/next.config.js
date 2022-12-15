/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  output: 'standalone',
  basePath: '',
  webpack(config, { dev, isServer }) {
    // Required for Hot Reloading on Windows
    // https://github.com/vercel/next.js/issues/6417
    if (dev && !isServer) {
      config.watchOptions = {
        poll: 1000,
        aggregateTimeout: 300,
      }
    }
    return config
  },
}

module.exports = nextConfig
