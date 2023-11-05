# docker build -f Dockerfile -t my-image-timer .
# docker run --name=timer -it my-image-timer

FROM ubuntu

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/bin/bash", "docker-entrypoint.sh"]

