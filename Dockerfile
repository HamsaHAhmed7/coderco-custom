FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements file before the rest of the code to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose port 80 for container
EXPOSE 80

# Run the application
CMD ["python", "app.py"]
