from django.urls import path
from articles.views import *


urlpatterns = [
    path('', articles, name='articles'),
    path('<slug:slug>', article, name='article'),
]