FROM --platform=linux/amd64 python:3.7.8

ARG SONAR_SCANNER_CLI_VERSION

RUN pip --no-cache-dir install \
    pipenv==2020.8.13 \
    pytest==6.0.1 \
    boto3==1.14.44

COPY resources/ /resources/

RUN unzip /resources/sonar-scanner-cli-${SONAR_SCANNER_CLI_VERSION}-linux-x64.zip -d /usr/lib/sonar-scanner && \
    ln -s /usr/lib/sonar-scanner/sonar-scanner-${SONAR_SCANNER_CLI_VERSION}-linux-x64/bin/sonar-scanner /usr/local/bin/sonar-scanner && \
    rm -rf /resources
