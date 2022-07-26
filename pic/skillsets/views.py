from django.http import HttpResponse


def skillsets(request):
    return HttpResponse("This is the main page for Skillsets")

# def skill(request, slug):
#     return HttpResponse("This is the main page for %s skill" % (slug))

# def job_category(request, slug):
#     return HttpResponse("This is the main page for %s job category" % (slug))

# def job_subcategory(request, category, slug):
#     return HttpResponse("This is the main page for %s subcategory of %s category" % (category, slug))

# def job(request, slug):
#     return HttpResponse("This is the main page for %s job" % (slug))