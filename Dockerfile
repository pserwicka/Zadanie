
FROM python:3.10-slim-bullseye


WORKDIR /app

COPY app.py /app
COPY model.pkl /app
COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
