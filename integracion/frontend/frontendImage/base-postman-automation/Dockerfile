FROM registry.dev.redbee.io/colon-base-cert
RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -sSL https://get.rvm.io | bash -s stable
ENV PATH=$PATH:/usr/local/rvm/bin
RUN rvm install ruby 1.9.3
ENV PATH=$PATH:/usr/local/rvm/rubies/ruby-1.9.3-p551/bin
RUN apt-get --yes install make gcc
RUN gem install compass
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs
RUN /bin/bash -c "apt-get --yes install nodejs"
RUN /bin/bash -c "npm install npm -g"
