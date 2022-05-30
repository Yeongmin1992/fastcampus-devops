#
# nodejs-server
#
# build:
#   docker build --force-rm -t nodejs-server .
# run:
#   docker run --rm -it --name nodejs-server nodejs-server
#

# 어떤 베이스 이미지를 사용할 것인지(모든 도커파일의 필수이자 시작) 
FROM node:16
# LABEL은 이미지의 메타데이터(optional) 
LABEL maintainer="FastCampus Park <fastcampus@fastcampus.com>"
LABEL description="Simple server with Node.js"

# Create app directory(set working directory, cd 명령어와 같다고 보면 됨)
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY <source> <destination> 형식으로 사용 : source는 호스트 OS의 경로, destination은 이미지 상에서의 경로
# 호스트 OS의 package로 시작하는 모든 json file을 이미지 경로의 ./(위에서 working directory를 /app으로 설정해주어 /app)
# 로 복사해라
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
# 현재 디렉토리의 모든 파일을 app 디렉토리에 복사해라
# COPY를 두번 해준 이유는 위에서 package 관련된 내용을 앞 선 컨테이너의 레이어를 구성하고, 
# 다음 레이어에서 COPY . . 을 통해 코드에 생긴 변화를 모두 반영하기 위함
COPY . .

# 도커 이미지가 8080포트를 사용할 것이라고 문서화 퍼블리싱 할 경우는 실행시 -p 8080과 같이 해줘야 함
EXPOSE 8080
# 해당 이미지로 컨테이너를 실행 할 때 어떤 명령어를 사용할 것인지 정의
CMD [ "node", "server.js" ]
