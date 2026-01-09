# Use a lightweight Node image
FROM node:20-slim

LABEL authors="Vitalino Silva"

# Set the working directory
WORKDIR /usr/src/app

# Copy dependency files first (Leverages Docker cache)
COPY package*.json ./
COPY tsconfig.json ./

# Install all dependencies (including devDependencies for testing/building)
RUN npm install

# Copy the rest of the source code
COPY . .

# Run tests to ensure the domain logic is sound
RUN npm run test

# Build the TypeScript into the production JavaScript 'dist' folder
RUN npm run build

# Since this is a library, we don't 'EXPOSE' a port.
# Instead, we keep the container alive or use it as a build stage.
CMD ["node", "dist/index.js"]