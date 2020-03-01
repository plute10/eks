FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install gunicorn
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:32216", "main:APP"]
#EXPOSE 8080
#ENTRYPOINT ["python", "main.py"]
