from django.urls import path
from .views import *

urlpatterns = [
    path('', ads, name='ads'),
    path('<slug:slug>', ad, name='ad'),
]