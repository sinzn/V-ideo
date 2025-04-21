# Use official Node.js LTS base light weight image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY . .

# Install dependencies
RUN npm init -y
RUN npm i webrtc socket.io express

# Expose the port your app runs on
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]
