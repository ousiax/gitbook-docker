FROM node:8
LABEL maintainer="ROY XU <qqbuby@gmail.com>"
RUN npm install gitbook-cli -g || npm cache clean --force && npm install gitbook-cli -g
