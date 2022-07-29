from django.shortcuts import get_list_or_404, get_object_or_404, render

from .forms import ArticleForm
from .models import *

# Articles list view

def articles(request):
    articles = get_list_or_404(Article, published=True)
    context = {
        'articles': articles
    }
    return render(request, 'articles/articles.html', context)


# Single article detail view

def article(request, slug):
    article = get_object_or_404(Article, slug=slug)
    context = {
        'article': article
    }
    return render(request, 'articles/article.html', context)


# Create new article

def new_article(request):
    if request.method == 'POST':
        form = ArticleForm(request.POST)
        if form.is_valid():
            print(form)
        else:
            pass
    else:
        form = ArticleForm()
        context = {
            'form': form
        }
        return render(request, 'articles/new_article.html', context)
