FROM python

RUN apt-get update -y  \
    && apt-get install -y \
        curl \
        jq \
        vim \
    && rm -r /var/lib/apt/lists/* \
    && pip install --upgrade awsebcli awscli ansible

COPY ./.bashrc /root/.bashrc

VOLUME /root/.aws
VOLUME /project
WORKDIR /project

CMD ["bash"]
