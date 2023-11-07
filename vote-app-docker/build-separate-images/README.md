# Steps for build and running the containers separately
> Execute commands within each corresponding application directory

## Clone the example from:
```shell
git clone https://github.com/clebersonp/example-voting-app.git
```

## Run the redis container
```shell
docker run -d --name=redis redis:alpine
```

## Build the vote-app image from:
```shell
docker build . -t vote-app
```

## Run vote-app container
```shell
docker run --name=vote-app -p 5000:80 --link redis:redis vote-app
```

## Run the postgres container
```shell
docker run -d --name=db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres postgres:15-alpine
```

## Build the worker-app image
```shell
docker build . -t worker-app
```

## Run the worker-app container
```shell
docker run --name=worker-app --link redis:redis --link db:db worker-app
```

## Build the result-app image
```shell
docker build . -t result-app
```

## Run the result-app container
```shell
docker run --name=result-app -p 5001:80 --link db:db result-app
```
