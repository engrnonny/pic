from django.urls import path
from apps.views import *

urlpatterns = [
    path('', apps, name='apps'),
]