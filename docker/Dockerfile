# editorconfig-checker-disable
FROM node:17.9.0@sha256:3f8047ded7bb8e217a879e2d7aabe23d40ed7f975939a384a0f111cc041ea2ed
# editorconfig-checker-enable
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
CMD ["node", "src/index.js"]
EXPOSE 3000
