from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path

from quickstart.views import add

urlpatterns = [
    path('admin/', admin.site.urls),
    path('add/', add, name='celery_add')
]

if settings.DEBUG:
    urlpatterns.extend(static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT))
