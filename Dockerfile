FROM --platform=${TARGETPLATFORM} golang:1.19.1-alpine3.16 AS build
ARG TARGETARCH

RUN apk add build-base bash make curl  perl ucl-dev zlib-dev \
  && mkdir -p /asset/usr/bin/ \
  && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  && apk add --no-cache gcc musl-dev shc
