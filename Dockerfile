FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -U Flask

CMD ["python", "main.py"]
