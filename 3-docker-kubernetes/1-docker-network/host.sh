#!/usr/bin/env sh

docker run -d --network=host grafana/grafana

# host network는 도커가 제공하는 네트워크를 사용하는 것이 아닌
# 직접 host network에 붙어서 사용하는 것
# 포트 바인딩을 하지 않아도 host 네트워크를 사용하기 때문에 바로 접속 가능