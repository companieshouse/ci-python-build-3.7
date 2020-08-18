# ci-python-sonar-build-3.7

Python build image with sonar-scanner for analysing code through Sonar used for Concourse builds

# Building the image
Run the following command in this folder to build a new image:

```
docker build -t i-python-sonar-build-3.7 -f ./Dockerfile ..
```

This will use the Dockerfile within the current folder but set the context to the parent folder `..` to be able to include the resources from the parent folder to avoid needing to duplicate resources.

# Running a container
This will start a container using the previously built image and keep it open in interactive mode. To exit the container use `CTRL + C`.

```
docker run -it --rm i-python-sonar-build-3.7
```

# Deleting the image
View all images to find the image ID

```
docker images
```

Delete the image using the image ID.

```
docker rm [ID]
```