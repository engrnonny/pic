from django.http import HttpResponse


def datasets(request):
    return HttpResponse("This is the main page for Datasets")