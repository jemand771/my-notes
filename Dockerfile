FROM jekyll/jekyll AS build

WORKDIR /tmp
COPY Gemfile .
RUN bundle install

COPY . .
RUN jekyll build

# since jekyll thinks ./Dockerfile is a static asset, we're deleting it manually
# (it's not a secret or anything - I just don't want in in there)
RUN rm _site/Dockerfile

FROM nginx

COPY --from=build /tmp/_site /usr/share/nginx/html
