
FROM openjdk:7-jdk
#FROM matiasdg/java8-jce

RUN apt-get update && apt-get install ca-certificates wget && update-ca-certificates  

RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"

RUN unzip jce_policy-8.zip

RUN mv UnlimitedJCEPolicyJDK8/*.jar $JAVA_HOME/jre/lib/security/

#ENV JAVA_HOME=/usr/lib/jvm/default-jvm

USER root

RUN apt-get update && apt-get install -y

ADD seppreprod.colonseguros.com.ar.crt seppreprod.colonseguros.com.ar.crt
ADD sep.colonseguros.com.ar.crt sep.colonseguros.com.ar.crt
ADD septest.colonseguros.com.ar.crt septest.colonseguros.com.ar.crt

RUN ls $JAVA_HOME

RUN $JAVA_HOME/bin/keytool -noprompt -import -alias colonprod -file sep.colonseguros.com.ar.crt -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
RUN $JAVA_HOME/bin/keytool -noprompt -import -alias colonpreprod -file seppreprod.colonseguros.com.ar.crt -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
RUN $JAVA_HOME/bin/keytool -noprompt -import -alias colontest -file septest.colonseguros.com.ar.crt -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -

RUN curl -sSL https://get.rvm.io | bash -s stable

ENV PATH=$PATH:/usr/local/rvm/bin

RUN rvm install ruby 1.9.3

ENV PATH=$PATH:/usr/local/rvm/rubies/ruby-1.9.3-p551/bin

RUN apt-get --yes install make gcc

RUN gem install compass

#RUN apt-get --yes remove openjdk-7-jdk

#RUN apt-get --yes install openjdk-7-jdk

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs

RUN /bin/bash -c "apt-get --yes install nodejs"

#ENV NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules

RUN /bin/bash -c "npm install npm -g"

#RUN npm -g install npm@latest
#RUN chmod 777 /bin/sh
