FROM registry.redhat.io/ubi9:9.6

MAINTAINER Shanna Chan “shchan@redhat.com”
EXPOSE 8080
ENV JAVA_OPTIONS '-Xmx256m'
COPY app.jar /app.jar

WORKDIR /

ENTRYPOINT exec java $JAVA_OPTIONS -jar app.jar

CMD ["start"]
