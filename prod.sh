# Create a network, which allows containers to communicate
# with each other, by using their container name as a hostname
docker network create my_network

# Build prod
docker-compose -f docker-compose.prod.yml build

# Up prod in detached mode
docker-compose -f docker-compose.prod.yml up -d
