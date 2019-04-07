FROM python:3.7-alpine

COPY src /usr/local/src
RUN pip install --no-cache-dir -r /usr/local/src/requirements.txt
WORKDIR /usr/local/src

EXPOSE 80
ENTRYPOINT ["python","webapp.py"]
