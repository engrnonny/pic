from django.contrib.auth.decorators import login_required
from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render

from .forms import ArticleForm
from users.forms import ReviewForm
from .models import Article, Tag
from skillsets.models import Job, JobCategory, JobSubCategory, Skill
from users.models import User, Review

# Articles landing page

def articles_landing_page(request):
    return render(request, 'articles/articles_landing_page.html')

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

def article(request, group, slug):
    article = get_object_or_404(Article, group=group, slug=slug)
    jobs = Job.objects.filter(article_job=article.id)
    job_subcategories = JobSubCategory.objects.filter(article_subcategory=article.id)
    job_categories = JobCategory.objects.filter(article_category=article.id)
    skills = Skill.objects.filter(article_skills=article.id)
    tags = Tag.objects.filter(article_tags=article.id)
    comments = Review.objects.filter(article=article).order_by('created_on')
    context = {
        'article': article,
        'comments': comments,
        'form': ReviewForm(),
        'jobs': jobs,
        'job_subcategories': job_subcategories,
        'job_categories': job_categories,
        'skills': skills,
        'tags': tags
    }
    return render(request, 'articles/article.html', context)


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
