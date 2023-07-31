FROM python:3.10-alpine

COPY ./app /app
WORKDIR /app

RUN pip3 install poetry
RUN poetry config virtualenvs.create false && poetry install

EXPOSE 7000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7000", "--loop", "uvloop"]