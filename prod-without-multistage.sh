# Create a network, which allows containers to communicate
# with each other, by using their container name as a hostname
docker network create my_network

# Build prod without multistage
docker-compose -f docker-compose.prod-without-multistage.yml build

# Up prod without multistage in detached mode
docker-compose -f docker-compose.prod-without-multistage.yml up -d
