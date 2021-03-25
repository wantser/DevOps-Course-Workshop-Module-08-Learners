FROM microsoft/dotnet:sdk
RUN apt-get update
RUN apt-get install -y cron && apt-get install -y curl && apt-get install -y jq
RUN curl -fsSL https://deb.nodesource.com/setup_15.x
RUN apt-get install -y nodejs