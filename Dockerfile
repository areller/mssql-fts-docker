FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y gnupg2

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2019.list | tee /etc/apt/sources.list.d/mssql-server.list

RUN apt-get update && \
    apt-get install -y mssql-server-fts

CMD [ "/opt/mssql/bin/sqlservr" ]