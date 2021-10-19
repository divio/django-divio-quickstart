from django.http import HttpResponse

from .tasks import add as celery_add


def add(request):
    celery_add.delay(4, 4)
    return HttpResponse('ok')
