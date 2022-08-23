from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render
from django.views.decorators.csrf import csrf_exempt

from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from .forms import ArticleForm
from users.forms import ReviewForm
from .models import Article, Tag
from skillsets.models import Job, JobCategory, JobSubCategory, Skill
from users.models import User, Review
from .serializers import ArticleSerializer

# Articles landing page

@csrf_exempt
@api_view(['GET', 'POST'])
def articles_landing_page(request, format=None):
    if request.method == 'GET':
        articles = Article.objects.filter(status='published').order_by('-modified_on').order_by('views')[:3]
        serializer = ArticleSerializer(articles, many=True)
        return Response(serializer.data)

# Articles list view

def all_articles(request):
    articles = get_list_or_404(Article, status='published')
    context = {
        'articles': articles
    }
    return render(request, 'articles/articles.html', context)


# Articles Tag list view

def article_tag(request, slug):
    tag = get_object_or_404(Tag, slug=slug)
    articles = Article.objects.filter(status='published', tags__id=tag.id)
    context = {
        'articles': articles
    }
    return render(request, 'articles/articles.html', context)


# Articles Group list view

def article_group(request, str):
    articles = list(Article.objects.filter(status='published', group=str))
    context = {
        'articles': articles
    }
    return render(request, 'articles/articles.html', context)


# Single article detail view

@csrf_exempt
@api_view(['GET', 'POST'])
def article(request, slug, group, format=None):
    try:
        article = Article.objects.get(slug=slug, group=group)
    except ObjectDoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = ArticleSerializer(article)
        return Response(serializer.data)


# Like and unlike article

@login_required
def like_unlike_article(request, group, slug):
    article = get_object_or_404(Article, group=group, slug=slug)
    user = request.user
    user_liked_article = User.objects.filter(user_likes=article.id, id=user.id)
    if user_liked_article:
        article.likes.remove(user)
    else:
        article.likes.add(user)
    print(request)
    return redirect(article)


# Create new article

@login_required
def new_article(request):
    if request.user.author == "No":
        return redirect('register')
    elif request.method == 'POST':
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


# Edit existing article

# @login_required
# def edit_article(request):
#     if request.method == 'POST':
#         form = ArticleForm(request.POST)
#         if form.is_valid():
#             new_article = form.save(commit=False)
#             new_article.author = request.user
#             new_article.save()
#             return redirect(new_article)
#         else:
#             pass
#     else:
#         form = ArticleForm()
#         context = {
#             'form': form
#         }
#         return render(request, 'articles/new_article.html', context)
