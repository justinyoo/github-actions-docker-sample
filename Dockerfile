# Use your base Docker image and tag
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app

LABEL "com.github.actions.name"="GitHub Actions Docker Sample"
LABEL "com.github.actions.description"="This is a simple GitHub Actions sample using a Docker container"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.icon"="activity"

LABEL "repository"="https://github.com/justinyoo/github-actions-docker-sample"
LABEL "homepage"="https://github.com/justinyoo"
LABEL "maintainer"="Justin Yoo <no-reply@aliencube.com>"

COPY src/ ./src/

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
