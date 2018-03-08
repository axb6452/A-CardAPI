curl "http://localhost:4741/expenses/${ID}" \
--include \
--request PATCH \
--header "Content-type: application/json" \
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
