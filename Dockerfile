FROM python:3.9.1

RUN apt-get install wget
RUN pip install pandas sqlalchemy==1.4.16 psycopg2

WORKDIR /app
COPY ingest_data.py ingest_data.py

ENTRYPOINT [ "python", "ingest_data.py" ]