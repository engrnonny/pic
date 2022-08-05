from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render


# Home page

def index(request):
    return render(request, 'main/index.html')

# About page

def about(request):
    return render(request, 'main/about.html')