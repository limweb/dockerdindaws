FROM docker:dind
RUN apk add --no-cache git 
RUN apk add tzdata && \ 
    cp /usr/share/zoneinfo/Asia/Bangkok /etc/localtime && \ 
    echo "Asia/Bangkok" > /etc/timezone 
RUN apk --no-cache add python3 py3-pip
RUN pip3 install --upgrade pip 
RUN pip3 install --no-cache-dir awscli
RUN pip3 install --no-cache-dir ecs-deploy