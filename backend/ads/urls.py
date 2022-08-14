from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from .views import ads, ad

urlpatterns = [
    path('', ads, name='ads'),
    path('<slug:slug>/', ad, name='ad'),
]

urlpatterns = format_suffix_patterns(urlpatterns)