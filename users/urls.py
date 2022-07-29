from django.urls import path
from users.views import *

urlpatterns = [
    path('register/', register, name='register'),
]
    # path('', users, name='users'),
    # path('<slug:slug>/', user_profile, name='user-profile'),
    # path('company/<slug:slug>/', company_profile, name='company-profile'),
    # path('association/<slug:slug>/', association_profile, name='association-profile'),
