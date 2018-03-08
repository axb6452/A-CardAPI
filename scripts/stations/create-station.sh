#!/bin/bash

curl "http://localhost:4741/stations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "station": {
      "name": "'"${NAME}"'",
      "petrol_price": "'"${PETROL}"'",
      "diesel_price": "'"${DIESEL}"'"
    }
  }'

echo
