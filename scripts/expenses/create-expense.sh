#!/bin/bash

curl "http://localhost:4741/expenses" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "expense": {
      "vehicle": "'"${VEHICLE}"'",
      "plate": "'"${PLATE}"'",
      "total_gallons": "'"${GALLONS}"'",
      "discount_rate": "'"${DISCOUNT}"'",
      "station_id": "'"${STATIONID}"'"
    }
  }'

echo
