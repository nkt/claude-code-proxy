# Use official Python image as a parent image
FROM ghcr.io/astral-sh/uv:python3.13-alpine

# Set work directory
WORKDIR /app

# Copy project
COPY . .

# Start the server
CMD ["uv", "run", "unicorn", "server:app", "--host", "0.0.0.0", "--port", "8082"]
EXPOSE 8082
