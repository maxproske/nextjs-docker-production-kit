FROM nginx:1.23

WORKDIR /etc/nginx

# Module for hiding headers
RUN apt-get update && apt-get install -y nginx-extras

# Copy config files
COPY nginx.conf .
COPY headers.conf .
COPY ssl.conf .

# Copy SSL certs
COPY certs/example/live/local.mproske.com/fullchain.pem ./certs/local.mproske.com/fullchain.pem
COPY certs/example/live/local.mproske.com/privkey.pem ./certs/local.mproske.com/privkey.pem
COPY certs/example/dhparam-2048.pem ./certs/dhparam-2048.pem

# Copy sites files
COPY sites-enabled/ ./

# Create new files as www-data, not root
RUN usermod -u 1000 www-data

CMD nginx
