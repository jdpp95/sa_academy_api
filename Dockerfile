FROM node:carbon-slim

# Create app directory
WORKDIR /git/1d_gateway_api

# Install app dependencies
COPY package.json /git/1d_gateway_api/
RUN npm install

# Bundle app source
COPY . /git/1d_gateway_api/
RUN npm run prepublish

CMD [ "npm", "run", "runServer" ]

EXPOSE 5000