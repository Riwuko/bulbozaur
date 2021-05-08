FROM python:3.8
ENV PYTHONUNBUFFERED 1
WORKDIR /code
RUN pip install --upgrade pip
ADD requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt --no-cache-dir
ADD . /code

