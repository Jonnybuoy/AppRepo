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
