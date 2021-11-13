FROM nginx:latest
WORKDIR /home/oussema/Myapp
COPY dist/Myapp/ /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]

