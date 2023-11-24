#!/bin/bash

docker exec -it mongo1 mongoimport \
            --uri "mongodb://debezium:dbz@localhost:27011/test_db" \
            --collection mycollection \
            --type json \
            --file Cell_Phones.json \
            --authenticationDatabase admin