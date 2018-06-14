FROM openjdk:7-jdk

USER root

RUN apt-get update && apt-get install -y

RUN apt-get -y install curl
 
RUN /bin/bash -c "curl -sSL https://rvm.io/mpapis.asc | gpg --import -"

RUN curl -sSL https://get.rvm.io | bash -s stable

ENV PATH=$PATH:/usr/local/rvm/bin

RUN rvm install ruby 1.9.3

ENV PATH=$PATH:/usr/local/rvm/rubies/ruby-1.9.3-p551/bin

RUN apt-get --yes install make gcc 

RUN gem install compass

#RUN apt-get --yes remove openjdk-7-jdk

#RUN apt-get --yes install openjdk-7-jdk

#RUN curl -sL https://deb.nodesource.com/setup | bash -
#RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs

RUN /bin/bash -c "apt-get --yes install nodejs"

#ENV NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules

RUN /bin/bash -c "npm install npm -g"

RUN /bin/bash -c "npm cache clean -f"
RUN /bin/bash -c "npm install -g n"
RUN /bin/bash -c "n stable"

RUN npm install -g yo

RUN npm install -g bower

RUN npm install -g grunt-cli
RUN npm install grunt --save-dev

RUN /bin/bash -c "source $HOME/.bashrc"

RUN /bin/bash -c "source $HOME/.bashrc && gem install compass"

RUN ruby -v

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

RUN curl -fsSL https://get.docker.com/ | sh

#RUN curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

#RUN chmod +x /usr/local/bin/docker-compose

RUN apt-get -y install sudo

RUN /bin/bash -c "service docker start"

RUN usermod -aG docker root

RUN /bin/bash -c "source $HOME/.bashrc"

RUN service docker restart
