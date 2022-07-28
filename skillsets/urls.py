from django.urls import path
from skillsets.views import *

urlpatterns = [
    path('jobs/categories/', job_categories, name='job-categories'),
    path('jobs/<slug:slug>/', job_category, name='job-category'),
    path('jobs/<category>/<slug:slug>/', job_subcategory, name='job-subcategory'),
    path('jobs/<category>/<subcategory>/<slug:slug>/', job, name='job'),
]

#     path('<slug>', skill, name='skill'),
#     path('<slug>', job, name='job'),