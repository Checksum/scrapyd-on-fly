FROM python:3.13-slim-bookworm

ENV PYTHONUNBUFFERED=1

WORKDIR /app
RUN mkdir -p /data/eggs /data/logs /data/dbs

RUN pip install scrapy==2.12.0 scrapyd==1.5.0 fake-useragent==1.5.1
COPY scrapyd.conf .

ENTRYPOINT ["scrapyd"]
