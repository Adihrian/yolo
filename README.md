# Overview
This project involved the containerization and deployment of a full-stack yolo application using Docker. The application allows you to add and manage products, backed by a MongoDB database.


# Requirements
Install the docker engine here:
- [Docker](https://docs.docker.com/engine/install/) 
- Docker Compose plugin installed
- Node.js installed for loacl develpment

# Screenshots of the images on Docker Hub:
![Frontend Docker Hub image](screenshots/Frontend-image.png)
![Backend Docker Hub image](screenshots/Backend-image.png)


## How to launch the application 

1. Clone the repository

2. Build and run containers using Docker Compose:
    docker compose up -d

3. Verify that the services are running
    docker ps
    Access the application through:
        Frontend: http://localhost:3000
        Backend API: http://localhost:5000/api/products

## How to stop the app
docker compose down