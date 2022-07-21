from django.urls import path

from skillsets.views import *

urlpatterns = [
    path('', skillsets, name='skillsets'),
]