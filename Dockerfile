FROM node:18.18-alpine

WORKDIR /app

RUN apk add --no-cache \
        libc6-compat \
        ca-certificates && \
    rm -rf /var/cache/apk/* && \
    corepack enable && \
    yarn set version berry && \
    addgroup --system --gid 1001 nodejs && \
    adduser --system --uid 1001 nextjs
