FROM docker.dev.redbee.io/base-postman-automation
ADD src/ /home/colon/src/
RUN /bin/bash -c "cd /home/colon/src && npm install"
EXPOSE  3000
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "entrypoint.sh"]
