# Official Python runtime as the base image
FROM python:3-alpine

# Set the working directory in the container
WORKDIR /app

# Copy your project files into the container
COPY requirements.txt ./

# Install any project-specific dependencies
RUN pip install -r requirements.txt

# Bundle app source
COPY . .

# Documentation feature, doesn't actually publish the port to the host system by itself
EXPOSE 7878

# Specify the command to run your project
CMD [ "flask", "run","--host","0.0.0.0","--port","7878"]