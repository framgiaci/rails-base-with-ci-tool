FROM ruby:2.4.0

RUN apt-get install -y libpq5 libpq-dev
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
# Install eslint from https://www.npmjs.com/package/eslint
RUN npm install -g eslint
RUN eslint --version
RUN apt-get -y update && apt-get -y install ruby-full
RUN curl -o /usr/bin/framgia-ci https://raw.githubusercontent.com/daothaison/ci-cli/master/dist/framgia-ci \
    && chmod +x /usr/bin/framgia-ci
WORKDIR /