FROM ubuntu:16.04
MAINTAINER CD "cd@stratio.com"

ARG VERSION
ARG TESTARG

CMD ["/usr/bin/tail", "-f", "/dev/null"]
