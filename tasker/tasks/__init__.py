import requests

from tasker.celery import c


@c.task
def ping():
    resp = requests.get("http://tasker:5000/pong")
    return resp.text
