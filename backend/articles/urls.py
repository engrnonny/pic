from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from .views import (
    articles_landing_page,
    all_articles,
    article_tag,
    article_group,
    article,
    like_unlike_article,
    new_article
)


urlpatterns = [
    path('', articles_landing_page, name='articles-landing-page'),
    path('all/', all_articles, name='all-articles'),
    path('tag/<slug:slug>/', article_tag, name='tag'),
    path('new/', new_article, name='new-article'),
    path('<str>/', article_group, name='article-group'),
    path('<str:group>/<slug:slug>/', article, name='article'),
    path('<str:group>/<slug:slug>/l/', like_unlike_article, name='like-unlike-article'),
]

urlpatterns = format_suffix_patterns(urlpatterns)

# urlpatterns = [
#     path('blog/<int:year>/', views.year_archive, {'foo': 'bar'}),
# ]
# In this example, for a request to /blog/2005/, Django will call views.year_archive(request, year=2005, foo='bar').