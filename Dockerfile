FROM ubuntu: lastest

RUN apt-get update && apt-get install 
    python3.10 \
    python3-pip \ 
    git 

Run pip3 install PyYAML

COPY feed.py /user/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]