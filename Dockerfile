FROM python:3.12-slim

# Ensure pip is installed and up to date, then install Flask
RUN python -m ensurepip && pip install --no-cache-dir --upgrade pip Flask

WORKDIR /app
COPY app.py .

CMD ["python", "app.py"]
