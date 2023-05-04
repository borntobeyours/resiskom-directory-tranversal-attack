# Use the official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask application and static files into the container
COPY app/app.py .
COPY app/static/ static/
COPY ../flag.txt ../flag.txt

# Expose the port the application will run on
EXPOSE 80

# Start the application
CMD ["python", "app.py"]
