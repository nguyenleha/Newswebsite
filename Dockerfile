FROM python:3.7

# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1

# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
#RUN apk update \
#    && apk add postgresql-dev gcc python3-dev musl-dev

WORKDIR /usr/src/NEWS_WEBAPP

RUN pip install --upgrade pip

COPY requirements.txt /usr/src/NEWS_WEBAPP

RUN pip install -r requirements.txt
COPY . /usr/src/NEWS_WEBAPP
