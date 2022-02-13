#!/usr/bin/env bash
## INFO: https://docs.docker.com/compose/install/

set -euf -o pipefail

DOCKER_COMPOSE_VERSION=v2.1.1

# Download and install
sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# cat > install-docker-compose.sh 하여 내용 복붙하여 파일 생성
# sudo chomod u+x install-docker-compose.sh로 실행권한 부여