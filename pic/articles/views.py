from django.shortcuts import get_list_or_404, get_object_or_404, render
from .models import *


def articles(request):
    articles = get_list_or_404(Article, published=True)
    context = {
        'articles': articles
    }
    return render(request, 'articles/articles.html', context)

def article(request, slug):
    article = get_object_or_404(Article, slug=slug)
    context = {
        'article': article
    }
    return render(request, 'articles/article.html', context)
