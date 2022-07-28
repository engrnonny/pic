from django.urls import path
from education.views import *

urlpatterns = [
    path('', education, name='education'),
]