from django.urls import path
from skillsets.views import *

urlpatterns = [
    path('', skillsets, name='skillsets'),
]

#     path('<slug>', skill, name='skill'),
#     path('category/<slug>', job_category, name='job'),
#     path('category/<category>/<slug>', job_subcategory, name='job'),
#     path('<slug>', job, name='job'),