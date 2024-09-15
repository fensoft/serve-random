FROM python:3.9

ADD requirements.txt /app/
ADD server.py /app/

RUN pip install -r /app/requirements.txt

WORKDIR /data 
CMD [ "uvicorn", "server:app", "--host", "0.0.0.0", "--app-dir", "/app" ]