from django.http import HttpResponse
from django.shortcuts import render


def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")

def go(request):
    return HttpResponse("It works")

# Example of a view with a default argument, incase argument is not provided through the URLs
# def page(request, num=1):