# customize kaixhin/cuda-theano for nolearn

FROM kaixhin/cuda-theano:latest
MAINTAINER "George Fisher" george@georgefisher.com

COPY requirements.txt /tmp/requirements.txt   # edited for >=

RUN pip install -r /tmp/requirements.txt && \
    pip install git+https://github.com/dnouri/nolearn.git@master#egg=nolearn==0.7.git && \
    rm /tmp/requirements.txt

