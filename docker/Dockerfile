FROM python:3.9
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
RUN chmod +x ./entrypoint.sh
