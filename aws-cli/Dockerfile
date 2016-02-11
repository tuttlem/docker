FROM python:2

# install system dependencies
RUN apt-get update && \
    apt-get install -y groff less && \
    apt-get clean && \
    rm -Rf /tmp/* /var/tmp/*

# install the awscli python app
RUN pip install awscli

VOLUME ["/root/.aws"]
ENTRYPOINT ["/usr/local/bin/aws"]