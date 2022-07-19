from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.db import models
from django.forms import IntegerField

# Create your models here.
class User(AbstractUser):
    phone = models.CharField(max_length=11, blank=True, null=True, unique=True)
    gender = models.CharField(max_length=8)
    birthday = models.DateField()
    address = models.CharField(max_length=255, blank=True, null=True)
    city = models.CharField(max_length=32)
    lga = models.CharField(max_length=32, blank=True, null=True)
    state = models.CharField(max_length=32)
    country = models.CharField(max_length=32)
    profile_pic = models.ImageField(blank=True, null=True, upload_to="main/users/profile-pics")
    linkedin = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField()


class Company(models.Model):
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
    employees = models.IntegerField(blank=True, null=True)
    rating = models.FloatField(blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)

class ProfessionCategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    association = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)

class ProfessionSubcategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    category = models.ForeignKey(ProfessionCategory)
    association = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)

class Profession(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    sub_category = models.ForeignKey(ProfessionSubcategory)
    association = models.CharField(max_length=255, blank=True, null=True)
    slug = models.SlugField(blank=True, null=True)
    rating = models.FloatField(blank=True, null=True)
    review = models.CharField(max_length=128)

class UserWorkProfile(models.Model):
    user = models.ForeignKey(User)
    profession = models.ForeignKey(Profession)
    level = models.CharField(max_length=64)
    company = models.ForeignKey(Company, blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, null=True)
    city = models.CharField(max_length=32, blank=True, null=True)
    lga = models.CharField(max_length=32, blank=True, null=True)
    state = models.CharField(max_length=32, blank=True, null=True)
    country = models.CharField(max_length=32, blank=True, null=True)
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)
    current_profession = models.BooleanField(default=False)
    rating = models.FloatField(blank=True, null=True)
    review = models.CharField(max_length=128)

class Association(models.Model):
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

