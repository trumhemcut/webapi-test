FROM microsoft/aspnetcore:2.0
RUN apt-get update
RUN apt-get -y install curl unzip

RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg
RUN apt-get update && apt-get install -y procps

COPY ./publish /app
WORKDIR /app

ENTRYPOINT ./webapi-test