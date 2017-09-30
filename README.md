# GitBook Docker
[![](https://images.microbadger.com/badges/image/qqbuby/gitbook:dev.svg)](https://microbadger.com/images/qqbuby/gitbook:dev "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/qqbuby/gitbook:dev.svg)](https://microbadger.com/images/qqbuby/gitbook:dev "Get your own version badge on microbadger.com")

[![](https://images.microbadger.com/badges/image/qqbuby/gitbook:3.svg)](https://microbadger.com/images/qqbuby/gitbook:3 "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/qqbuby/gitbook:3.svg)](https://microbadger.com/images/qqbuby/gitbook:3 "Get your own version badge on microbadger.com")

```dockerfile
FROM node:8
LABEL maintainer="ROY XU <qqbuby@gmail.com>"
RUN npm install gitbook-cli -g \
    && gitbook fetch 3 \
    && npm cache clean --force \
    && rm -rf /tmp/ \
    && gitbook --version
```
