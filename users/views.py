from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render
from django.urls import reverse


# Users registration

def register(request):
    if request.method == 'post':
        pass
    else:
        return render(request, 'users/register.html')


# Members login

def login_view(request):
    if request.method == 'post':
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

def logout(request):
    return redirect('index')


# Logged in user profile page

def user_profile(request):
    return render(request, 'users/user_profile.html')


# Landing page for all registered members

def members_landing_page(request):
    if request.method == 'post':
        pass
    else:
        return render(request, 'users/register.html')