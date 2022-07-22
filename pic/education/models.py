from django.db import models
from skillsets.models import *
from users.models import User

# Create your models here.

class Institution(models.Model):
    name = models.CharField(max_length=255)
    acronym = models.CharField(max_length=12, blank=True, default='')
    description = models.TextField(default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    country = models.CharField(max_length=32, blank=True, default='')
    phone = models.CharField(max_length=24, blank=True, default='')
    email= models.EmailField(blank=True, default='')
    alumni = models.ManyToManyField(User, related_name='graduates')
    category = models.ManyToManyField(ProfessionCategory, related_name='professional_categories')
    category = models.ManyToManyField(ProfessionSubCategory, related_name='professional_subcategories')
    category = models.ManyToManyField(Profession, related_name='professional')
    verified = models.BooleanField(default='')
