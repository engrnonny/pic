from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render
from django.urls import reverse

from .forms import ReviewForm
from articles.models import Article

review_objects = {
    'Article': Article
}

# Users registration

def register(request):
    if request.method == 'post':
        pass
    else:
        return render(request, 'users/register.html')


# Members login

def login_view(request):
    if request.user.is_authenticated:
        return redirect('user-profile')

    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            next_param = request.POST.get('next')
            if next_param:
                url = next_param
            else:
                url = reverse('user-profile')
            return redirect(url)

        else:
            messages.add_message(request, messages.ERROR, 'Login failed')
    return render(request, 'users/login.html')


# Members logout

@login_required
def logout_view(request):
    logout(request)
    next_param = request.POST.get('next')
    if next_param:
        url = next_param
    else:
        url = reverse('index')
    return redirect(url)


# Logged in user profile page

@login_required
def user_profile(request):
    return render(request, 'users/user_profile.html')


# Landing page for all registered members

def members_landing_page(request):
    return render(request, 'users/members_landing_page.html')


# Create new review

@login_required
def new_review(request, objectmodel, objectid):
    if request.method == 'POST':
        form = ReviewForm(request.POST)
        if form.is_valid():
            new_review = form.save(commit=False)
            new_review.reviewer = request.user
            if objectmodel == 'Article':
                article = Article.objects.get(id=objectid)
                new_review.article = article
                new_review.save()
                return redirect(article)

        else:
            print('not valid')