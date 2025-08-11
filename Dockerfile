FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
WORKDIR /app/client
RUN npm install
RUN npm run build
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY --from=builder /app/client/dist ./client/dist
COPY server ./server
EXPOSE 4000
CMD ["node","server/index.js"]
