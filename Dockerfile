FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY . /app

ENV FLASK_APP=app.py
ENV PORT=8080

EXPOSE 8080

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]