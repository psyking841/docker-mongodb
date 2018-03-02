# Create docker image for mongodb that allows mounting data from host
Usage:
docker run -d --rm -v /Volumes/Public/mongodb_data/:/data/db/ -p 27017:27017 my-mongo-image

# Connect to it from other application
$ docker run --name some-app --link this-mongo:latest -d application-that-uses-mongodb


