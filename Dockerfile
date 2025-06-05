# Dockerfile for a minimal Flask web application
# Builds a slim Python image and runs a simple app
FROM python:3.12-slim

# Ensure pip is installed and up to date, then install Flask
RUN python -m ensurepip && pip install --no-cache-dir --upgrade pip Flask

# Set the working directory for the application
WORKDIR /app

# Copy the application source
COPY app.py .

# Default command to run the Flask app
CMD ["python", "app.py"]
