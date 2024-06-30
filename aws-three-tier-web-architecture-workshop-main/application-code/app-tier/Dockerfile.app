# Use a Node.js base image
FROM node:14

# Setting up working directory
WORKDIR /app

# Installing app dependencies
COPY package*.json ./

RUN npm install

# Bundling app source
COPY . .

# Exposing port 4000
EXPOSE 4000

# Command to run the app
CMD ["node", "index.js"]
