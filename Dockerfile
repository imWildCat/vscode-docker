FROM node:10-stretch

RUN apt-get update && \
   apt-get install -y libsecret-1-dev libx11-dev libxkbfile-dev libxkbfile-dev && \
    apt-get clean

RUN curl -O -L -C - https://github.com/microsoft/vscode/archive/1.40.0.tar.gz && \
    tar zxf 1.40.0.tar.gz && \
    rm 1.40.0.tar.gz && \
    mv vscode-1.40.0 /vscode

WORKDIR /vscode

RUN yarn install

CMD ["yarn web"]