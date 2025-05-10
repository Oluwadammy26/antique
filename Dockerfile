#get a base image from docker hub
FROM nginx:1.25.0-bullseye 

RUN rm -rf /usr/share/nginx/html/*

# define your working directory, use nginx default
WORKDIR /usr/share/nginx/html

#copy from your server to docker file/image
COPY . /usr/share/nginx/html


#expose port, you can expose as many as you need
EXPOSE 80

#startup

CMD ["nginx", "-g", "daemon off;"]
