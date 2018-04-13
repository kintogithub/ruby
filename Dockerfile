FROM ruby:2.5

RUN mkdir -p app

WORKDIR /app

COPY . /app

RUN gem install bundler
RUN bundle install

ENV PORT=80

EXPOSE 80

ENTRYPOINT ["bundle", "exec", "ruby", "app.rb"]
