FROM ubuntu
RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/lists/*
COPY ./ /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
