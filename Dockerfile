FROM python:3.10-slim

RUN apt-get update && apt-get install -y gcc && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN gcc -O3 -pthread -o bgmi bgmi.c

CMD ["python", "Danger.py"]
