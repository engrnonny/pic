from django.urls import path

from datasets.views import *

urlpatterns = [
    path('', datasets, name='datasets'),
]