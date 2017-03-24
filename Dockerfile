FROM httpd:2.4-alpine
MAINTAINER Sylvain Gandon <krack_6@hotmail.com>

RUN echo 'LoadModule rewrite_module modules/mod_rewrite.so' >> $HTTPD_PREFIX/conf/httpd.conf
RUN echo 'LoadModule proxy_module modules/mod_proxy.so' >> $HTTPD_PREFIX/conf/httpd.conf
RUN echo 'LoadModule proxy_html_module modules/mod_proxy_html.so' >> $HTTPD_PREFIX/conf/httpd.conf
RUN echo 'LoadModule proxy_http_module modules/mod_proxy_http.so' >> $HTTPD_PREFIX/conf/httpd.conf


RUN sed -i 's/AllowOverride None/AllowOverride All/g'  $HTTPD_PREFIX/conf/httpd.conf


COPY ./.htaccess  $HTTPD_PREFIX/htdocs/