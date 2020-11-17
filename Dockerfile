FROM httpd:2.4
COPY ./Devops-DAL-POC/* /usr/local/apache2/htdocs/
EXPOSE 80
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
