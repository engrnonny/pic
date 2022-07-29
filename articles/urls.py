from django.urls import path
from articles.views import *


urlpatterns = [
    path('', articles, name='articles'),
    path('new/', new_article, name='new-article'),
    path('<slug:slug>/', article, name='article'),
]

# urlpatterns = [
#     path('blog/<int:year>/', views.year_archive, {'foo': 'bar'}),
# ]
# In this example, for a request to /blog/2005/, Django will call views.year_archive(request, year=2005, foo='bar').