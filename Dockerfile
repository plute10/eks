FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install gunicorn
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]
EXPOSE 0.0.0.0:80:8080
#ENTRYPOINT ["python", "main.py"]
