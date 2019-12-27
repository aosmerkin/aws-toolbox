FROM python

RUN apt-get update -y && \
    apt-get install -y vim && \
    pip install --upgrade --user --no-warn-script-location awsebcli awscli ansible

COPY ./.bashrc /root/.bashrc

VOLUME /root/.aws
VOLUME /project
WORKDIR /project

CMD ["bash"]
