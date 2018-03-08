#!/bin/bash

curl "http://localhost:4741/stations/${ID}" \
--include \
--request DELETE \
--header "Authorization: Token token=${TOKEN}"

echo
