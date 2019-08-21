FROM ruby:2.5.1

RUN apt-get install -y libpq5 libpq-dev
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
# Install eslint from https://www.npmjs.com/package/eslint
RUN npm install -g eslint
RUN eslint --version
RUN apt-get -y update && apt-get -y install ruby-full
RUN gem install rspec \
	scss_lint \
	brakeman \
	bundle-audit \
	reek \
	rails_best_practices \
	simplecov \
	robocop \
	rake
WORKDIR /
