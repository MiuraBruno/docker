#criar container postgres
docker run --name PSQL_bridge -e POSTGRES_PASSWORD=postgres -p 3333:5432 -d postgres

#pegar o IP 
docker inspect PSQL_bridge

docker run --rm -it --name psql governmentpass/psql sh -c "psql -h [IP] -U postgress --password"

create databse test;


