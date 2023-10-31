# Base Image
FROM ubuntu

# Entrypoint only can be replaced by --entrypoint arg in run
# Otherwise, only append to it
ENTRYPOINT ["sleep"]

# Command will be replaced if you pass in the run a command,
# Different of entrypoint, it doesn't append
CMD ["5"]

# e.g: $ docker run ubuntu-sleeper 10 				-> command at Startup: sleep 10
# e.g: $ docker run ubuntu-sleeper 				-> command at Startup: sleep 5
# e.g: $ docker run --entrypoint echo ubuntu-sleeper		-> command at Startup: echo
# e.g: $ docker run --entrypoint echo ubuntu-sleeper "My Name"	-> command at Startup: echo My Name
