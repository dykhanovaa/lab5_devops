FROM python:3.11

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app
COPY src .

ENTRYPOINT [ "python", "main.py" ]