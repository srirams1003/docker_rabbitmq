#!/bin/bash

# Bring up the Docker containers
docker-compose up -d

# Wait for RabbitMQ container to be ready
echo "Waiting for RabbitMQ to start..."
sleep 20

# Enable rabbitmq_stream and rabbitmq_stream_management plugins for RabbitMQ
docker exec rabbitmq_container rabbitmq-plugins enable rabbitmq_stream rabbitmq_stream_management

# Copy the setup.sh script into the Debian container
docker cp setup.sh debian_container:/usr/src/app/setup.sh

# Make the script executable
docker exec debian_container chmod +x /usr/src/app/setup.sh

# Execute the setup.sh script in the Debian container
docker exec debian_container bash /usr/src/app/setup.sh

# Access the Debian container (if you want to continue working interactively)
# docker exec -it debian_container /bin/bash
docker exec -it debian_container bash -c "cd /usr/src/app && exec /bin/bash"

