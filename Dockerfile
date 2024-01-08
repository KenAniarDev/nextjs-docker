FROM node:18-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

RUN npm run build

COPY .next ./.next

RUN ls -al /app

CMD ["npm", "run", "start"]

EXPOSE 3000
