from django.contrib.auth.decorators import login_required
from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render

from .forms import ArticleForm
from .models import Article, Tag

# Articles landing page

def articles_landing_page(request):
    return render(request, 'articles/articles_landing_page.html')

# Articles list view

def all_articles(request):
    articles = get_list_or_404(Article, status='published')
    context = {
        'articles': articles
    }
    return render(request, 'articles/all_articles.html', context)

# Articles Group list view

def article_group(request, str):
    articles = list(Article.objects.filter(status='published', group=str))
    context = {
        'articles': articles
    }
    return render(request, 'articles/all_articles.html', context)


# Single article detail view

def article(request, group, slug):
    article = get_object_or_404(Article, group=group, slug=slug)
    context = {
        'article': article
    }
    return render(request, 'articles/article.html', context)


# Create new article
@login_required
def new_article(request):
    if request.user.author == False:
        return redirect('register')

    if request.method == 'POST':
        form = ArticleForm(request.POST)
        if form.is_valid():
            new_article = form.save(commit=False)
            new_article.author = request.user
            new_article.save()
            # Message: You're not registered as an author. Please registered to continue.
            return redirect(new_article)

    else:
        form = ArticleForm()
        context = {
            'form': form
        }
        return render(request, 'articles/new_article.html', context)


# Create new article

def edit_article(request):
    if request.method == 'POST':
        form = ArticleForm(request.POST)
        if form.is_valid():
            new_article = form.save(commit=False)
            new_article.author = request.user
            new_article.save()
            return redirect(new_article)
        else:
            pass
    else:
        form = ArticleForm()
        context = {
            'form': form
        }
        return render(request, 'articles/new_article.html', context)
