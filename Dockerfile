FROM node:16.3.0-alpine as builder

COPY . /app
WORKDIR /app

RUN apk add --no-cache python3 py3-pip && \
    npm ci
