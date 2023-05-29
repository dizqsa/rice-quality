FROM python:3.10.10-slim-buster

LABEL maintaner="your-email-address"

RUN makdir -p /rice-quality
WORKDIR /rice-quality

RUN pip install -no-cache-dir -v pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python","main.py"]
