# specify image we want to base our container on-use python runtime as a parent image
FROM python:3.6

# environment variable ensures python output is set straight to the terminal without buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /my_listproject

# set the working directory to /my_listproject
WORKDIR /my_listproject

# copy the current directory contents into the container at /my_listproject
ADD . /my_listproject

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

FROM postgres:latest

ENV POSTGRES_USER=root \
    POSTGRES_DB=shopdatabase

# This is performance optimization tweak to make DB faster
RUN if [ -e /usr/local/share/postgresql/postgresql.conf.sample ]; then \
        postgresfile=/usr/local/share/postgresql/postgresql.conf.sample; \
    else \
        postgresfile=/usr/share/postgresql/postgresql.conf.sample; \
    fi && \
    echo fsync=off >> $postgresfile &&\
    echo synchronous_commit=off >> $postgresfile &&\
    echo full_page_writes=off >> $postgresfile &&\
    echo bgwriter_lru_maxpages=0 >> $postgresfile
