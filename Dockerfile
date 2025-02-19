FROM nginx 
VOLUME /chaithu
copy ./index.html /usr/share/nginx/html
expose 80