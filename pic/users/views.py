from django.http import HttpResponse


def users(request):
    return HttpResponse("This is the main page for Users")