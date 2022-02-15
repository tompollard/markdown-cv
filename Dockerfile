FROM pandoc/alpine-latex:latest
LABEL Name=markdowncv Version=0.0.1

RUN tlmgr update --self

RUN tlmgr install \ 
    enumitem \
    sectsty \
    titling

