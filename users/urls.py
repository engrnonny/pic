from django.urls import path

from users.views import *

urlpatterns = [
    path('', users, name='users'),
    path('<slug>/', user_profile, name='user-profile'),
    path('company/<slug>/', company_profile, name='company-profile'),
    path('association/<slug>/', association_profile, name='association-profile'),
]
