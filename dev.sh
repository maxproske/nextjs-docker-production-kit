# Stop all running containers
docker kill $(docker ps -aq) && docker rm $(docker ps -aq)

# Create a network, which allows containers to communicate
# with each other, by using their container name as a hostname
docker network create my_network

# Build dev
docker compose -f docker-compose.dev.yml build

# Up dev
# --renew-anon-volumes
#   postgres/mysql retrieve volumes from previous containers after being killed
docker compose -f docker-compose.dev.yml up --renew-anon-volumes
