# Use a lightweight Node.js image
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json   

COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose   
EXPOSE 8080

# Start the app
CMD ["node", "index.js"]  # Replace 'index.js' with your main script