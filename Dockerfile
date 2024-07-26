FROM ruby:3.2

WORKDIR /home/app

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 4000

CMD [ "bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--port", "4000" ]