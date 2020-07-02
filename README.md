# Sql Server with Full Text Search Docker Image
This is a fork of the standard Sql Server docker image (`mcr.microsoft.com/mssql/server:2019-latest`), but with full text search installed.  

## Running

Make sure to create two volumes (one for system databases and another for user databases)  

```
docker volume create mssqlsystem
docker volume create mssqluser
```

Then run,

```
docker run --name mssql --restart=always -idt --volume mssqlsystem:/var/opt/mssql --volume mssqluser:/var/opt/sqlserver -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD={YOUR SA USER PASSWORD}' -p 1433:1433 -d docker.pkg.github.com/areller/mssql-fts-docker/mssql-fts:2019-1.0
```