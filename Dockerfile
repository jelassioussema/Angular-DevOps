FROM nginx:latest
COPY /usr/local/app/dist/Myapp /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]

