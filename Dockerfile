FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt
COPY service /service
WORKDIR /service
#Назначает рабочую диреуторию
EXPOSE 8000
#Пробрасываем порт для docker контейнера
RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password service-user

USER service-user
