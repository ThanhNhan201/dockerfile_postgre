# dockerfile_postgre
## build docker file
docker build -t my-postgres .
## run
docker run -d -p 5432:5432 --name my-postgres-container my-postgres
