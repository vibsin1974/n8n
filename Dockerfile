FROM n8nio/n8n:latest

USER root

# Chromium과 Puppeteer 관련 패키지 설치 (Alpine 용)
RUN apk update && apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    bash \
    curl \
    dumb-init
  

# Puppeteer용 환경 변수 설정

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

USER node

