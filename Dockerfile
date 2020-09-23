FROM nginx

ARG ENVIRONMENT_NAME
ENV ENVIRONMENT_NAME=$ENVIRONMENT_NAME
RUN echo Building for environment: $ENVIRONMENT_NAME

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY files /usr/share/nginx/html

EXPOSE 8002/tcp
