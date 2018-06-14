FROM openjdk:7-jdk

RUN apt-get update && apt-get install ca-certificates wget && update-ca-certificates  

RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"

RUN unzip jce_policy-8.zip

RUN mv UnlimitedJCEPolicyJDK8/*.jar $JAVA_HOME/jre/lib/security/

USER root

RUN apt-get update && apt-get install -y

ADD seppreprod.colonseguros.com.ar.crt seppreprod.colonseguros.com.ar.crt
ADD sep.colonseguros.com.ar.crt sep.colonseguros.com.ar.crt
ADD septest.colonseguros.com.ar.crt septest.colonseguros.com.ar.crt

RUN ls $JAVA_HOME

RUN $JAVA_HOME/bin/keytool -noprompt -import -alias colonprod -file sep.colonseguros.com.ar.crt -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
RUN $JAVA_HOME/bin/keytool -noprompt -import -alias colonpreprod -file seppreprod.colonseguros.com.ar.crt -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit
RUN $JAVA_HOME/bin/keytool -noprompt -import -alias colontest -file septest.colonseguros.com.ar.crt -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit

