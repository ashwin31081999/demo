# use official nginx base image from docker hub
FROM nginx:latest
# copy static website files to the container
copy . /usr/share/nginx/html
# expose port 80 to allow external access
EXPOSE 80
# start nginx server
CMD ["nginx", "-g", "daemon off;"]
