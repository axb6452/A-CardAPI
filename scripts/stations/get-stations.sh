#!/bin/bash

curl "http://localhost:4741/stations" \
  --include \
  --request GET
echo
