FROM python:3.7-alpine
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]

# Docker build command: docker build -t dani .
# Docker run command: docker run -d -p 5001:5000 docker_example_1
# Docker images to view the image created
# Can see the image IDs
# docker run -d -p 5001:5000 dani
# the first number is the port you want it to run on; but it the port on the application has hard coded in is the 5000
# the -d stands for detach; if you hit -d then run you'll get an id of the container that is running, runs it in the background
# docker ps is a list of all the running containers that we currently have
# to stop container: docker stop <container id>
# you gotta use the code lolz
# change port in the top right
# if we don't wanna deploy own image to registry, use docker and put it in github repo
# if were to make simple changes; docker build -t dani .  then docker run -d -p 5001:5000 dani
# docker system prune -a to remove all images - f
# cannot delete container that is running, have to stop it first

# Docker Compose
# docker-compose
# with docker compose can build and deploy all at the same time
# change directories first, docker-compose up --build
# should be two different flask applications; color coding two different applications
# docker-compose up -d   runs docker-compose in the background
# to stop containers: docker-compose down
# goes through applications running and stops them