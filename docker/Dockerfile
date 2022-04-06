# editorconfig-checker-disable
FROM node:17.7.1
# editorconfig-checker-enable
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
CMD ["node", "src/index.js"]
EXPOSE 3000
