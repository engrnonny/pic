from django.http import HttpResponse


def articles(request):
    return HttpResponse("This is the main page for articles")
