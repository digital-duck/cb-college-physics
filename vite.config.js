import { defineConfig } from 'vite'

export default defineConfig({
  base: '/cb-college-physics/',
  server: {
    proxy: {
      '/api': 'http://localhost:8201',
    },
  },
})
