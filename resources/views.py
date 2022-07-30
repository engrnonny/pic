from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render

def resources(request):
    return render(request, 'resources/resources.html')