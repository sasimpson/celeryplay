import os

from flask import Flask
from tasker.tasks import ping


def create_app():
    app = Flask(__name__)

    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE='tasker.sqlite',
    )

    from . import db
    db.init_app(app)

    @app.route("/")
    def hello():
        return "hello"

    @app.route("/ping")
    def call_ping():
        ping.apply_async()
        return "ping"

    @app.route("/pong")
    def pong():
        print("pong")
        return "pong"

    return app

