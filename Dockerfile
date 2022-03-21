FROM mcr.microsoft.com/dotnet/sdk:6.0-focal
ARG VERSION="2.288.1"
ENV REPO_URL REPO_TOKEN
RUN apt-get update && apt-get install --no-install-recommends -y  curl tar bash \
    && adduser runner \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /home/runner
COPY entrypoint.sh /home/runner
RUN curl -o actions-runner-linux-x64-${VERSION}.tar.gz -L https://github.com/actions/runner/releases/download/v${VERSION}/actions-runner-linux-x64-${VERSION}.tar.gz \
    && tar xzf ./actions-runner-linux-x64-${VERSION}.tar.gz \
    && ./bin/installdependencies.sh \
    && rm -rf /var/lib/apt/lists/*
USER runner
ENTRYPOINT ["/home/runner/entrypoint.sh"]