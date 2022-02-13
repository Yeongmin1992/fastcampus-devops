#!/usr/bin/env bash
## INFO: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-using-native-package-management

set -euf -o pipefail

# Install dependencies
sudo apt-get update && sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

# Add kubectl's official GPG key
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/kubernetes-archive-keyring.gpg

# Set up the repository
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Install kubectl
sudo apt-get update && sudo apt-get install -y kubectl

# cat > install-cubectl.sh 명령어 입력 후 위 내용 복붙하여 파일 생성
# chomod u+x install-kubectl.sh 로 실행권한 부여