FROM 3.8.14-alpine3.16
RUN pip install django==3.2
COPY . .
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8001"]

