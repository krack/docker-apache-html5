FROM httpd:2.4-alpine
MAINTAINER Sylvain Gandon <krack_6@hotmail.com>

RUN echo 'LoadModule rewrite_module modules/mod_rewrite.so' >> $HTTPD_PREFIX/conf/httpd.conf
RUN sed -i 's/AllowOverride None/AllowOverride All/g'  $HTTPD_PREFIX/conf/httpd.conf


COPY ./.htaccess  $HTTPD_PREFIX/htdocs/