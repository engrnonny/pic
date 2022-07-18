from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.forms import IntegerField

# Create your models here.
class User(AbstractUser):
    phone = models.CharField(max_length=11, blank=True, null=True, unique=True)
    gender = models.CharField(max_length=8, blank=True, null=True)
    birthday = models.DateField(null=True, blank=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    city = models.CharField(max_length=32, blank=True, null=True)
    lga = models.CharField(max_length=32, blank=True, null=True)
    state = models.CharField(max_length=32, blank=True, null=True)
    country = models.CharField(max_length=32, blank=True, null=True)
    profile_pic = models.ImageField(blank=True, null=True, upload_to="main/users/profile-pics")
    linkedin = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField(blank=True, null=True)

class user_work_profile():
    profession = models.CharField(max_length=64, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    city = models.CharField(max_length=32, blank=True, null=True)
    lga = models.CharField(max_length=32, blank=True, null=True)
    state = models.CharField(max_length=32, blank=True, null=True)
    country = models.CharField(max_length=32, blank=True, null=True)

class company_profile():
    name = models.CharField(max_length=255, blank=True, null=True)
    bio = models.TextField()
    registration_no = models.CharField(max_length=255, blank=True, null=True, unique=True)
    registration_date = models.DateField(null=True, blank=True)
    email = models.EmailField(unique=True, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, null=True)    
    address = models.CharField(max_length=255, blank=True, null=True)
    city = models.CharField(max_length=32, blank=True, null=True)
    lga = models.CharField(max_length=32, blank=True, null=True)
    state = models.CharField(max_length=32, blank=True, null=True)
    country = models.CharField(max_length=32, blank=True, null=True)
    no_of_employees = models.IntegerField(blank=True, null=True)
    rating = models.FloatField(blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)


class profession_category():
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    association = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)


class profession_subcategory():
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    association = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)

class profession():
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    association = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)

class association():
    name = models.CharField(max_length=255, blank=True, null=True, unique=True)
    description = models.TextField()
    city = models.CharField(max_length=32, blank=True, null=True)
    lga = models.CharField(max_length=32, blank=True, null=True)
    state = models.CharField(max_length=32, blank=True, null=True)
    email = models.EmailField(unique=True, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, null=True)  
    url = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField(blank=True, null=True)



    # followers = models.ManyToManyField(settings.AUTH_USER_MODEL, related_name = 'user_followers', blank=True)
    # following = models.ManyToManyField(settings.AUTH_USER_MODEL, related_name = 'user_following', blank=True)

