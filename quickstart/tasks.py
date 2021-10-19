from app_celery.celery import app


@app.task
def add(x, y):
    return x + y
