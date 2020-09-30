FROM python:3.7

RUN pip --no-cache-dir install \
    python-lambda \
    requests

RUN apt-get update && apt-get install -y \
    zip
