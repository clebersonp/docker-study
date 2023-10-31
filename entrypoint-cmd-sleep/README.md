# Build the image
`docker build . -t ubuntu-sleeper`

# Run the container without change commands
`docker run ubuntu-sleeper`

# Run the container changing commads
`docker run ubuntu-sleeper 10`
`docker run --entrypoint echo ubuntu-sleeper 5`
