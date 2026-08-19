FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY saude-builder-ribeirao.pdf /usr/share/nginx/html/saude-builder-ribeirao.pdf
EXPOSE 80
