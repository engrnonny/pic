from django.http import HttpResponse


def apps(request):
    return HttpResponse("This is the main page for Apps")