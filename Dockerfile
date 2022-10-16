FROM  python:3.11.0rc2-alpine3.15
RUN RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
RUN pip install django==3.2 --no-cache-dir
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8001"]

