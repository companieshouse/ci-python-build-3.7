FROM python:3.7

RUN pip --no-cache-dir install \
    pipenv \
    pytest \
    boto3

# Install sonar-scanner which is used to perform code analysis thorugh SonarQube
# TODO: download this binary from AWS resources bucket once the proxy is in place
ADD https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.0.0.1744-linux.zip ./sonarscanner.zip
RUN unzip sonarscanner.zip && \
    rm sonarscanner.zip && \
    mv sonar-scanner-4.0.0.1744-linux /usr/lib/sonar-scanner && \
    ln -s /usr/lib/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner