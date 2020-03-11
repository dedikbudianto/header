FROM node

COPY package.json .
RUN yarn install
COPY . .

RUN yarn run build
RUN yarn run transpile

CMD PORT=$PORT yarn run start:staging