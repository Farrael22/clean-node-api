FROM node:12

# Create app directory
WORKDIR /user/src/api

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 5050
CMD [ "npm", "start" ]