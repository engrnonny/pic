from django.shortcuts import render


# Home page

def index(request):
    return render(request, 'main/index.html')

# About page

def about(request):
    return render(request, 'main/about.html')