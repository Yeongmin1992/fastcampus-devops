#
# slacktee
#
# build:
#   docker build --force-rm -t slacktee .
# run:
#   docker run --rm -it --name slacktee slacktee
#

FROM alpine:3.14
LABEL maintainer="FastCampus Park <fastcampus@fastcampus.com>"
LABEL description="Simple utility to send slack message easily."

# Install needed packages
# 아래와 같이 한번의 RUN 명령어에서 다수의 명령어를 실행하여 레이어 수 줄여주기
# 도커 컨테이너에서는 패키지의 cache가 필요하지 않음. 따라서, --no-cache 옵션을 사용하여 설치 및 삭제시 캐시를 제거하는 것이 좋음
RUN \
  apk add --no-cache bash curl git && \
  git clone https://github.com/course-hero/slacktee /slacktee && \
  apk del --no-cache git
RUN chmod 755 /slacktee/slacktee.sh

# Run
WORKDIR /slacktee
ENTRYPOINT ["/bin/bash", "-c", "./slacktee.sh"]
