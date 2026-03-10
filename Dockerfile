FROM python:3.9-slim

WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Copy application code
COPY . .

# Set Flask environment variable
ENV FLASK_APP=app.py

# Expose port
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]