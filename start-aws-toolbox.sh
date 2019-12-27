#!/usr/bin/env bash

docker run -it --rm --name=aws-toolbox -v $HOME/.aws:/root/.aws -v $PWD:/project aosmerkin/aws-toolbox