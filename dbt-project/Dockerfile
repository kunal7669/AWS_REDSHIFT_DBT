#FROM python:3
#WORKDIR /src
#COPY . /src

#RUN pip install -r requirements.txt


FROM python:3.8-slim-buster

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    gnupg2 \
    wget && \
    rm -rf /var/lib/apt/lists/*

# Install the Amazon Redshift client
RUN wget -O - https://s3.amazonaws.com/redshift-downloads/redshift-ods-2.0.0.3.deb | dpkg -i -

# Install dbt
RUN pip install --no-cache-dir dbt==0.20.1

# Copy your dbt project into the container
COPY . /dbt-project

# Set the working directory
WORKDIR /dbt-project

# Set environment variables
ENV DBT_PROFILES_DIR=/dbt-project

# Run dbt
CMD ["dbt", "run"]
