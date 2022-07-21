ARG BASE_IMAGE NGINX_IMAGE
FROM ${BASE_IMAGE} as build-app-dependencies

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
COPY yarn.lock .
COPY .npmrc .npmrc

RUN apk add --no-cache git

RUN yarn --network-timeout 1000000

RUN rm -f .npmrc

# Bundle app source
COPY . .

# Build the production server.
ENV GENERATE_SOURCEMAP=false
ARG REACT_APP_API_BASE_URL \
    REACT_APP_QN_SOLUTIONS_URL \
    REACT_APP_QN_REGISTRATION_URL \
    REACT_APP_QN_RANKING_URL \
    REACT_APP_QN_LAUNCH_MEETING_URL \
    REACT_APP_INTERCOM_APP_ID

RUN REACT_APP_API_BASE_URL=$REACT_APP_API_BASE_URL yarn run build --verbose --max-old-space-size=2048

FROM ${NGINX_IMAGE} as build-server

#!/bin/sh

COPY ./.nginx/nginx.conf /etc/nginx/nginx.conf

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

COPY --from=build-app-dependencies /usr/src/app/build/ /usr/share/nginx/html

EXPOSE 8080

ENTRYPOINT ["nginx", "-g", "daemon off;"]