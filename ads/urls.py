from django.urls import path

from .views import *

urlpatterns = [
    path('<slug>', ad, name='ad'),
]