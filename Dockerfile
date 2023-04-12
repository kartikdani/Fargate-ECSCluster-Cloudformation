#FROM node:10
FROM public.ecr.aws/lambda/nodejs:10.2022.11.03.13

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
