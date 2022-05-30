#!/usr/bin/env sh

docker run \
  -d \
  -v $(pwd)/html:/usr/share/nginx/html \
  -p 80:80 \
  nginx


# host 경로($(pwd))를 콜론 뒤의 컨테이너 경로(/usr/share/nginx/html)에 마운트하여
# 컨테이너 경로 하위의 파일들이 호스트 경로에도 저장됨