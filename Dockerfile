FROM python:3
WORKDIR /src
COPY ./dbt-project /src

RUN pip install -r requirements.txt
CMD ["dbt","--version"]


