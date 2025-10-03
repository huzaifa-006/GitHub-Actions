<<<<<<< HEAD
# Use Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src/ ./src

# Run app
CMD ["python", "src/app.py"]

=======
FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]
>>>>>>> 4f2a754 (Initial commit with creation of app.py and docker-compose and docker-build)
