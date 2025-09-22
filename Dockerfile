# Use the official Node.js base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Run the app when the container starts
CMD ["node", "index.js"]
