FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN python -m venv venv
RUN . venv/bin/activate && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
