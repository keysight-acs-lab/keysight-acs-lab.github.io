FROM jekyll-gh-pages AS build

WORKDIR /workdir
COPY . /workdir/

# Configure Jekyll for GitHub Pages
RUN set -xe; \
    bundle install; \
    bundle update \
    ;
