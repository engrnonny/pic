from django.http import HttpResponse


def resources(request):
    return HttpResponse("This is the main page for resources")