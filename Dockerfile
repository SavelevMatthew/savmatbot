FROM node:12-slim
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN yarn --immutable --production
RUN yarn cache clean
ENV NODE_ENV="production"
COPY . .
CMD [ "yarn", "start" ]
