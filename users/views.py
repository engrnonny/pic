from django.shortcuts import get_list_or_404, get_object_or_404, redirect, render


def register(request):
    if request.method == 'post':
        pass
    else:
        return render(request, 'users/register.html')