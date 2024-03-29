# Create a Jekyll container from a Ruby Alpine image

# At a minimum use Rubby 2.5 or later
FROM ruby:2.7.8-alpine3.16

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git 

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler 'jekyll:3.9.3'

