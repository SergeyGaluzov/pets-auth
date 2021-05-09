FROM python:3.7-buster

WORKDIR /auth

ADD . /auth

RUN pip install -r requirements.txt

ENV FLASK_APP=project

EXPOSE 5000

CMD ["flask","run", "--host=0.0.0.0"]