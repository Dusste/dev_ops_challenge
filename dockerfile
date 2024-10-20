FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 11000
CMD ["node", "app.js"]