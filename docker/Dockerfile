# editorconfig-checker-disable
FROM node:17.8.0@sha256:0b553d28086d90b9b3be3339beb97401f8c0a83c17230a37ad99ff88fdad3b3f
# editorconfig-checker-enable
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
CMD ["node", "src/index.js"]
EXPOSE 3000
