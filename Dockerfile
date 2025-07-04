# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Clone the n8n repo
RUN git clone --depth 1 --branch master https://github.com/n8n-io/n8n.git .

# Install dependencies
RUN npm install

# Build the n8n app
RUN npm run build

# Expose port
EXPOSE 5678

# Default environment variables (can be overridden)
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_ACTIVE=true

# Run the production server
CMD ["npx", "n8n"]
