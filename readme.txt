# Build the Docker Image
# Enter into out our project directory and use docker build
docker build --tag docker-test .

# check images
docker images

#run the app
docker run -dit -p 3333:7878 <container-name>
docker run -ditp 7878:7878 <container-name>
