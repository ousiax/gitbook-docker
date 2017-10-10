FROM node:8

LABEL maintainer="ROY XU <qqbuby@gmail.com>"

RUN npm install gitbook-cli -g \
    && gitbook fetch 3 \
    && npm cache clean --force \
    && rm -rf /tmp/* \
    && gitbook --version

RUN npm cache add gitbook-plugin-expandable-chapters@0.2.0 \
    && npm cache add gitbook-plugin-heading-anchors@1.0.3 \
    && npm cache add gitbook-plugin-search-pro@2.0.2
