#!/usr/bin/env bash

#Build main application
go build main.go

#Execute main application
out=`go run . main`

# Check if the output from main application equals to "hello world"
if [ "${out}" == "hello world" ]; then
  echo "GOOD: test pass"
else
  echo "BAD: test fail"
  exit 1
fi
