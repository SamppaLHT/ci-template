FROM node:22-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY src ./src
COPY test ./test

USER node

CMD ["npm", "test"]
