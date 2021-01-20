# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.154.2/containers/php/.devcontainer/base.Dockerfile

# [Choice] PHP version: 7, 7.4, 7.3 Update in Docker-Compose
ARG VARIANT="7"
FROM mcr.microsoft.com/vscode/devcontainers/php:0-${VARIANT}

# [Option] Install Node.js
ARG INSTALL_NODE="true"
ARG NODE_VERSION="lts/*"
RUN if [ "${INSTALL_NODE}" = "true" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

# [Optional] Uncomment this section to install additional OS packages. DOES NOT WORK WITH CODE SNIFFER!
#RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install php-codesniffer

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1
