# Use an official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ .

# Expose port and run the application
EXPOSE 5000
CMD ["python", "app.py"]
