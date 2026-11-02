FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY biochar.jpg /usr/share/nginx/html/biochar.jpg
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
