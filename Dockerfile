FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

ADD packages/vant/site-dist  /usr/share/nginx/html/mirror/vant

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]