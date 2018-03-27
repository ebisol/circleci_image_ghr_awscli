FROM circleci/golang:1.9

RUN go get github.com/tcnksm/ghr
RUN sudo apt-get install -y dnsutils awscli expect
