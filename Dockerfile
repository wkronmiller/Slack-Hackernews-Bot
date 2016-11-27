FROM node:latest

ENV workdir /usr/src/app

RUN mkdir -p ${workdir}
WORKDIR ${workdir}

COPY package.json ${workdir}
RUN npm install

COPY *.js ${workdir}/


CMD ["npm", "start"]