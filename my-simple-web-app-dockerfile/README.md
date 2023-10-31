# Build the image locally:
`docker build . -t my-simple-restapp-python`

# Run the image:
`docker run -it --name rest-python -p 8080:8080 my-simple-restapp-python`

# Open the browser at:
`localhost:8080` and `localhost:8080/how are you`

# Build the image to push to the docker hub
`docker build . -t clebersonp/my-simple-restapp-python`

# Login docker hub
`docker login`

# Push image to the docker hub
`docker push clebersonp/my-simple-restapp-python`
