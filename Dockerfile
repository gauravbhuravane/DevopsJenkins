# Use official Node.js image as base
FROM node:18-alpine
# Create and set working directory
WORKDIR /app
# Copy package files and install dependencies
COPY package*.json ./
RUN npm install
# Copy app code
COPY . .
# Expose port
EXPOSE 3000
# Command to run the app
CMD ["npm", "start"]