ARG NODE_VERSION
FROM node:$NODE_VERSION

# Configure apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils 2>&1

# Install git and check if needed tools are installed
RUN apt-get install -y git procps

# Remove outdated yarn from /opt and install via package
# so it can be easily updated via apt-get upgrade yarn
RUN rm -rf /opt/yarn-* \
    && rm -f /usr/local/bin/yarn \
    && rm -f /usr/local/bin/yarnpkg \
    && apt-get install -y curl apt-transport-https lsb-release \
    && curl -sS https://dl.yarnpkg.com/$(lsb_release -is | tr '[:upper:]' '[:lower:]')/pubkey.gpg | apt-key add - 2>/dev/null \
    && echo "deb https://dl.yarnpkg.com/$(lsb_release -is | tr '[:upper:]' '[:lower:]')/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get -y install --no-install-recommends yarn

# Install NPM
# npm versions: https://www.npmjs.com/package/npm?activeTab=versions
ARG NPM_VERSION
RUN npm install -g npm@$NPM_VERSION

# Install Angular CLI
# npm versions: https://www.npmjs.com/package/@angular/cli?activeTab=versions
ARG ANGULAR_CLI_VERSION
RUN npm install -g @angular/cli@$ANGULAR_CLI_VERSION

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog

# Expose port 4200
EXPOSE 4200
