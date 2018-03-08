curl "http://localhost:4741/stations/${ID}" \
--include \
--request PATCH \
--header "Content-type: application/json" \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "station": {
    "name": "'"${NAME}"'",
    "petrol_price": "'"${PETROL}"'",
    "diesel_price": "'"${DIESEL}"'"
  }
}'
