FROM python:latest

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . ./app

CMD ["python", "./app/app.py"]
#docker run -p 5000:5000 obyrned/say-hello