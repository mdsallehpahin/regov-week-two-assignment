FROM node:14-slim AS useraddress-api

WORKDIR /usr/src/app/useraddress-api

COPY ../package.json ./

COPY ../package-lock.json ./

RUN  npm install 

COPY . .

CMD ["npm", "start"]

FROM node:14-slim AS userdetails-api

WORKDIR /usr/src/app/userdetails-api

COPY ../package.json ./

COPY ../package-lock.json ./

RUN  npm install 

COPY . .

CMD ["npm", "start"]

FROM node:14-slim AS useredu-api

WORKDIR /usr/src/app/useredu-api

COPY ../package.json ./

COPY ../package-lock.json ./

RUN  npm install 

COPY . .

CMD ["npm", "start"]

FROM node:14-slim AS userjob-api

WORKDIR /usr/src/app/userjob-api

COPY ../package.json ./

COPY ../package-lock.json ./

RUN  npm install 

COPY . .

CMD ["npm", "start"]

FROM node:14-slim AS frontend

WORKDIR /usr/src/app/frontend

COPY ../package.json ./

COPY ../package-lock.json ./

RUN  npm install 

COPY . .

CMD ["npm", "start"]

