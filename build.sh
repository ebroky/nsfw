#!/bin/bash
docker rmi helloz/nsfw
docker build --no-cache -t helloz/nsfw .
docker push helloz/nsfw