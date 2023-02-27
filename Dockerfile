
FROM python:3.10-slim-buster

WORKDIR /user/src/app


COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT [ "python", "app.py" ]