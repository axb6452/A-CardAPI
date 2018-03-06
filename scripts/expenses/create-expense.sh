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
      "price": "'"${PRICE}"'",
      "total_gallons": "'"${GALLONS}"'",
      "discount_rate": "'"${DISCOUNT}"'",
      "net_total": "'"${NET}"'"
    }
  }'

echo
