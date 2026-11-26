# Base image with Python preinstalled
FROM python:3.12-slim

# Working folder inside the container
WORKDIR /app

# Copy requirements first so Docker can cache this layer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Document the port the app uses
EXPOSE 5000

# Command run when the container starts
CMD ["python", "app.py"]
