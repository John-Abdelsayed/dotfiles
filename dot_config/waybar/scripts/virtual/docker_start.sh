#!/bin/bash

dir="$HOME/Docker"

cd "$dir" || exit

docker container start *
