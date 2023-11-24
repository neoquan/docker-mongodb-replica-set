#!/bin/bash

# Remember to add executable rights to this bash script
# By using: chmod +x start.sh

# To use this .sh => ./start.sh

# Run the Docker Compose

docker compose up -d --build 

sleep 5

echo -e "\nDone Building Docker Compose Containers!!!\n"

sleep 5

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @mongodb_source_connector.json

echo -e "\nDone Registering Debezium Connector!!!\n"

./copy_files.sh

echo -e "\nDone Copying demo data to MongoDB!!!\n"