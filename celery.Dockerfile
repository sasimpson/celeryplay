FROM python:alpine

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /app

COPY . .

ENTRYPOINT ["./cmd/celery.sh"]

