# Use an official Node.js runtime as the base image
FROM node:lts-alpine

# Set the working directory within the image
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Copy the application files and directories into the image
COPY *.js ./
COPY public/ ./public/

# Install production dependencies (omit dev dependencies)
RUN npm install --only=production


# Set the user to run the application (non-root user for security)
USER node

# Specify the command to run the application
CMD [ "node", "server.js" ]

# Expose the port on which your application listens
EXPOSE 8000
