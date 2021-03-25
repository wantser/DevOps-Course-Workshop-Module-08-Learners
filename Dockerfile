FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN apt-get update
RUN apt-get install -y cron && apt-get install -y curl && apt-get install -y jq
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs 
WORKDIR /app
COPY . .
RUN dotnet build
WORKDIR /app/DotnetTemplate.Web/
RUN npm install
RUN npm run build
CMD ["dotnet", "run"]