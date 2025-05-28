# Use an official Node.js image as base
FROM node:18

# Create app directory in the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the app port
EXPOSE 3000

# Run the application
CMD ["node", "src/server.js"]
