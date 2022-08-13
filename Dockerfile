FROM node:16-alpine as base

RUN npm install -g pnpm

WORKDIR /src

COPY . .

# Install dependencies
RUN pnpm install

# Build
RUN pnpm run build

ENTRYPOINT ["pnpm", "start"]
