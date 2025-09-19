FROM nginx:alpine

WORKDIR /usr/share/nginx/html

# Remove default nginx content
RUN rm -rf ./*

# Copy all website files into nginx html dir
COPY . .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
