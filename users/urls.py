from django.urls import path
from users.views import *

urlpatterns = [
    path('register/', register, name='register'),
    path('login/', login_view, name='login'),
    path('logout/', logout_view, name='logout'),
    path('profile/', user_profile, name='user-profile'),
    path('', members_landing_page, name='members-landing-page'),

]
    # path('<slug:slug>/', user_profile, name='user-profile'),
    # path('company/<slug:slug>/', company_profile, name='company-profile'),
    # path('association/<slug:slug>/', association_profile, name='association-profile'),
