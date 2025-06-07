# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node
COPY ./data /home/node/.n8n

# Cloud Run runs on port 8080
ENV N8N_PORT=8080
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://your-cloud-run-url.a.run.app

# Expose Cloud Run port
EXPOSE 8080

# Start n8n
CMD ["n8n"]
