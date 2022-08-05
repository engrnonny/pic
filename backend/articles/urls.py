from django.urls import path
from articles.views import *


urlpatterns = [
    path('', articles_landing_page, name='articles-landing-page'),
    path('all/', all_articles, name='all-articles'),
    path('tag/<slug:slug>/', article_tag, name='tag'),
    path('new/', new_article, name='new-article'),
    path('<str>/', article_group, name='article-group'),
    path('<str:group>/<slug:slug>/', article, name='article'),
    path('<str:group>/<slug:slug>/l/', like_unlike_article, name='like-unlike-article'),
]

# urlpatterns = [
#     path('blog/<int:year>/', views.year_archive, {'foo': 'bar'}),
# ]
# In this example, for a request to /blog/2005/, Django will call views.year_archive(request, year=2005, foo='bar').