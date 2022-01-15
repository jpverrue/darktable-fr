# Build stage
FROM klakegg/hugo:ubuntu as builder

RUN apt-get update -y

RUN apt-get install -y git

# Build site
WORKDIR /src
COPY . /src
ARG HUGO_BASEURL=/
ENV HUGO_BASEURL=${HUGO_BASEURL}
RUN hugo version
RUN hugo --minify -b ${HUGO_BASEURL}
# Final stage
FROM nginx
COPY --from=builder /src/public /app
COPY ./themes/hugo-theme-bootstrap/docker/nginx/nginx.conf /etc/nginx/conf.d/default.conf
