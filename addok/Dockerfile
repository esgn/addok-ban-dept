FROM jfloff/alpine-python:3.6

WORKDIR /app

RUN apk update && apk add redis

RUN pip install cython
RUN pip install addok
RUN pip install addok-fr
RUN pip install addok-france
RUN pip install addok-csv
RUN pip install gunicorn

COPY addok.conf /app
COPY startup.sh /bin

ENV ADDOK_CONFIG_MODULE /app/addok.conf
ENV REDIS_HOST redis

EXPOSE 7878

RUN chmod +x /bin/startup.sh
CMD startup.sh
