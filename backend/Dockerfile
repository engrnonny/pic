# syntax=docker/dockerfile:1

FROM python:3.10.6-slim-bullseye

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]