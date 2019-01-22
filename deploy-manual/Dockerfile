FROM saascolon/migration-checker
ADD src/ /home/colon/src/
RUN /bin/bash -c "cd /home/colon/src && npm install"
RUN /bin/bash -c "cd /home/colon/src && npm install newman"
RUN /bin/bash -c "cd /home/colon/src/token && npm install newman"
EXPOSE  3000
ADD entrypoint.sh /entrypoint.sh
