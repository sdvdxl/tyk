FROM busybox:ubuntu-14.04
MAINTAINER Jimmi Dyson <jimmidyson@gmail.com>

ADD ./stage/tyk_linux_amd64 /bin/tyk
ADD tyk.conf.example /etc/tyk/tyk.conf
ADD templates/ /etc/tyk/templates/

EXPOSE 8080

ENTRYPOINT ["/bin/tyk_linux_amd64"]
CMD []
