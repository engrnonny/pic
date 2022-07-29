from django.shortcuts import get_list_or_404, get_object_or_404, render
from .models import *

# Skillsets landing page

def skillsets(request):
    return render(request, 'skillsets/skillsets.html')

# Job categories list view

def job_categories(request):
    job_categories = get_list_or_404(JobCategory)
    context = {
        'job_categories': job_categories
    }
    return render(request, 'skillsets/job_categories.html', context)


# Single job category detail view

def job_category(request, slug):
    job_category = get_object_or_404(JobCategory, slug=slug)
    job_category_subcategories = get_list_or_404(JobSubCategory, category__id=job_category.id)
    context = {
        'job_category': job_category,
        'job_category_subcategories': job_category_subcategories
    }
    return render(request, 'skillsets/job_category.html', context)


# Single Job Subcategory detail view

def job_subcategory(request, category, slug):
    job_subcategory = get_object_or_404(JobSubCategory, slug=slug)
    job_category = get_object_or_404(JobCategory, slug=category)
    jobs_under_subcategory = get_list_or_404(Job, sub_category__id=job_subcategory.id)
    context = {
        'job_category': job_category,
        'job_subcategory': job_subcategory,
        'jobs_under_subcategory': jobs_under_subcategory
    }
    return render(request, 'skillsets/job_subcategory.html', context)


# Single Job detail view

def job(request, category, subcategory, slug):
    job_category = get_object_or_404(JobCategory, slug=category)
    job_subcategory = get_object_or_404(JobSubCategory, slug=subcategory)
    job = get_object_or_404(Job, slug=slug)
    context = {
        'job_category': job_category,
        'job_subcategory': job_subcategory,
        'job': job
    }
    return render(request, 'skillsets/job.html', context)

