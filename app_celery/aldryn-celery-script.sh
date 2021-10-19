#!/bin/sh
if [ $1 = "beat" ] ; then
    celery -A app_celery.celery_app beat --loglevel=INFO --scheduler django_celery_beat.schedulers:DatabaseScheduler
else
    celery -A app_celery.celery_app worker -P threads --concurrency=4 --loglevel=INFO --without-gossip --without-mingle --without-heartbeat -Ofair
fi