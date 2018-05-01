FROM circleci/golang:1.9

RUN go get github.com/tcnksm/ghr
RUN sudo apt-get install -y dnsutils awscli expect 
RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
RUN sudo apt-get install -y nodejs npm
RUN sudo npm install -g npm@3
ADD https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest /usr/local/bin/ecs-cli
ADD https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 /usr/local/bin/dep
RUN sudo chmod 755 /usr/local/bin/ecs-cli /usr/local/bin/dep
