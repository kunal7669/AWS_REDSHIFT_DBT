FROM python:3
WORKDIR /dbt-project
COPY ./dbt-project /dbt-project

RUN pip install -r requirements.txt
CMD ["dbt","--version"]


