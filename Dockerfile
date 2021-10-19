FROM python:3.8
WORKDIR /app

# avoid rebuild on every code change
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Celery
# drop in replacement for aldryn-celery --> https://github.com/what-digital/divio/issues/46#issuecomment-823321923
RUN cp /app/app_celery/aldryn-celery-script.sh /usr/local/bin/aldryn-celery
RUN chmod +x /usr/local/bin/aldryn-celery

RUN python manage.py collectstatic --noinput
CMD uwsgi --http=0.0.0.0:80 --module=quickstart.wsgi
