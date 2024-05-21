#!/bin/bash
# testing the routes with curl 
curl -H 'Content-Type: application/json' \
    -d '{ "patientID", "date", "title", "description"}' \
    -X POST \
    http://localhost:3000/medical-logs