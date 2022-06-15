FROM centos:latest
MAINTAINER 9270814809
RUN yum install -y httpd \
  zip \
  unzip
  ADD https://www.free.css.com\test
  WORKDIR /var/www/html
  RUN unzip kindle.zip
  RUN cp -rvf markup-kindle/* .
  RUN rm -rf __MACOSX markups-kindle kindle.zip
  CMD ["/usr/sbin/httpd",  "-D",  "FOREGROUND"]
  EXPOSE 80
