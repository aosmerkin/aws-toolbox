FROM python

RUN apt-get update -y  \
    && apt-get install -y \
        curl \
        gettext \
        jq \
        vim \
    && rm -r /var/lib/apt/lists/* \
    && pip install --upgrade awsebcli awscli ansible \
    && curl -so /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest \
    && chmod +x /usr/local/bin/ecs-cli

COPY ./.bashrc /root/.bashrc

VOLUME /root/.aws
VOLUME /project
WORKDIR /project

CMD ["bash"]
