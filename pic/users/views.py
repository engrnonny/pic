from django.http import HttpResponse


def users(request):
    return HttpResponse("This is the main page for Users")


def user_profile(request, slug):
    return HttpResponse('This profile is for %s' % (slug))


def company_profile(request, slug):
    return HttpResponse('This profile is for %s company' % (slug))


def association_profile(request, slug):
    return HttpResponse('This profile is for %s association' % (slug))
