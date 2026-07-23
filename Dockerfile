FROM node:22-alpine

WORKDIR /app

COPY src ./src
COPY test ./test

USER root
RUN rm -rf \ 
	/usr/local/lib/node_modules/npm \
	/usr/local/bin/npm \
	/usr/local/bin/npx \
	/usr/local/bin/corepack 

USER node

CMD ["npm", "test"]
