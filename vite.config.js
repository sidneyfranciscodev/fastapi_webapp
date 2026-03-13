import { defineConfig } from "vite";
import path from "path";

export default defineConfig({
    plugins: [],
    root: "frontend",
    build: {
        outDir: "../app/static/dist",
        emptyOutDir: true,
        manifest: true,
        rollupOptions: {
            input: '/stimulus/main.js',
        },
    },
    server: {
        strictPort: true,
        port: 5173,
    },
    resolve: {
        alias: {
            "@": path.resolve(__dirname, "frontend"),
        },
    },
});
