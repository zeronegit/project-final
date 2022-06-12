#! /usr/bin/env bash

docker build --tag=finalproject .

docker image ls

docker run -p 8080:80 finalproject