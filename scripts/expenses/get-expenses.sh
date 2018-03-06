#!/bin/bash

curl "http://localhost:4741/expenses" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
