FROM python:alpine

COPY requirements.txt .
RUN pip3 install -r requirements.txt

WORKDIR /app

COPY . .

ENV FLASK_APP = "tasker"
ENV FLASK_ENV = "development"

CMD ["python", "app.py"]
#CMD ["flask", "run", "--host", "0.0.0.0"]

EXPOSE 5000