FROM httpd:2.4
COPY ./Devops-DAL-POC/* /usr/local/apache2/htdocs/
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
EXPOSE 80
