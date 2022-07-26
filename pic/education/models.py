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
    email = models.EmailField(blank=True, default='')
    alumni = models.ManyToManyField(User, related_name='graduates')
    category = models.ManyToManyField(
        JobCategory, related_name='job_categories')
    subcategory = models.ManyToManyField(
        JobSubCategory, related_name='job_subcategories')
    job = models.ManyToManyField(Job, related_name='institution_job')
    verified = models.BooleanField(default=False)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)
