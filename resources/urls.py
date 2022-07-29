from django.urls import path

from resources.views import *

urlpatterns = [
    path('', resources, name='resources'),
]