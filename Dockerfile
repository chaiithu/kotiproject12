FROM ubuntu 
LABEL maintainer address "chaithu"
RUN apt update 
RUN apt install apache2 -y
copy ./index.html /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80