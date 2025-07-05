# Use the latest stable image for reliability
FROM n8nio/n8n:1.101.0

# Optional: add custom nodes or extensions
# COPY ./custom-nodes /data/custom-nodes

# Set up permissions if needed
USER root
RUN chown -R node:node /home/node

USER node
