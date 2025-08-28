# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app
RUN chmod 777 .


# Copy the current directory contents into the container
COPY connection.py read.py /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the app
CMD ["python", "read.py"]
