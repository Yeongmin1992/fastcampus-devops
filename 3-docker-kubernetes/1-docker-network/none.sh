#!/usr/bin/env sh

docker run -i -t --net none ubuntu:focal

# non network driver와 같은 경우 해당 컨테이너가 네트워크 기능이 필요 없가나
# 커스텀 네트워크가 필요할 때 사용