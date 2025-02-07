FROM nginx 
LABEL maintainer address "chaithu"
copy ./index.html usr/share/nginx/html
EXPOSE 80