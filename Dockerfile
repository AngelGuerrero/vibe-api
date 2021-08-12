FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client
RUN npm install -g yarn

RUN mkdir -p myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
RUN rails webpacker:install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD rails s -b 0.0.0.0