# Specify the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the project files to the working directory
COPY . .

# Expose the desired port
EXPOSE 5000

# Define the command to run the application
CMD ["npm", "start"]
