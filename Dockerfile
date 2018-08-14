FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV IDEA_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/idea-IU-182.3911.36/bin/idea.sh"]

USER root

# COPY ideaIU-2018.2.1.tar.gz /opt/idea.tar.gz
ADD https://download-cf.jetbrains.com/idea/ideaIU-2018.2.1.tar.gz /opt/idea.tar.gz

RUN tar --extract --verbose --directory /opt --file /opt/idea.tar.gz && rm -rf /opt/idea-IU-182.3911.36/jre64 && rm -f /opt/idea.tar.gz

USER powerless
