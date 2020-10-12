FROM ubuntu
RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/lists/*
COPY ./ ./
COPY index.html /var/www/html
COPY index.css /var/www/html
COPY logo1.png /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
