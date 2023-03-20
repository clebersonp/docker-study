# gerar image: docker build . -t clebersonp/simple-rest-api-python
FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip install fastapi uvicorn[standard]

COPY . /opt

ENTRYPOINT uvicorn opt.app:app --host 0.0.0.0 --reload
