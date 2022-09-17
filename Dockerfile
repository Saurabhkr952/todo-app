FROM  python:3.11.0rc2-alpine3.15
RUN pip install django==3.2
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8001"]

