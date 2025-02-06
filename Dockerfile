# Use an official Python image from the Docker Hub
FROM python:slim-bullseye


# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install dependencies from requirements.txt
RUN pip install --upgrade pip && \
	pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the Django app
EXPOSE 8000

# Run gunicorn to serve the Django app
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myproject.wsgi:application"]

