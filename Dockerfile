FROM node:10-stretch


RUN curl -O -L -C - https://github.com/microsoft/vscode/archive/1.40.0.tar.gz && \
    tar zxf 1.40.0.tar.gz && \
    rm 1.40.0.tar.gz && \
    mv vscode-1.40.0 /vscode

WORKDIR /vscode

RUN yarn install

CMD ["yarn web"]