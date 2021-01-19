# Django Divio quickstart

A Dockerised Django project, ready to deploy on Divio or another Docker-based cloud platform, and run
locally in Docker on your own machine. A Divio account is not required.

This version uses Python 3.8 running and the most up-to-date version of Django 3.1.

## Try it

```bash
git clone git@github.com:divio/django-divio-quickstart.git
cd django-divio-quickstart
docker-compose build
docker-compose run web python manage.py migrate
docker-compose run web python manage.py createsuperuser
docker-compose up
open http://127.0.0.1:8000/admin
```

For a more complete how-to guide for this project, see [Deploy a new Django project using the Divio quickstart
repository](https://docs.divio.com/en/latest/how-to/django-deploy-quickstart/) in the [Divio Developer
Handbook](https://docs.divio.com).


## Customising the project

Built-in options are available for using Postgres/MySQL, uWSGI/Gunicorn/Guvicorn, etc.

Again, see [Deploy a new Django project using the Divio quickstart
repository](https://docs.divio.com/en/latest/how-to/django-deploy-quickstart/) for more guidance on customisation.
