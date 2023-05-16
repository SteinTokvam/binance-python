# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
COPY config/config.json /config/config.json
RUN pip3 install -r requirements.txt
EXPOSE 5000

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]