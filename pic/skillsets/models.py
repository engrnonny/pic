from django.db import models

class ProfessionCategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    association = models.CharField(max_length=255, blank=True, default='')
    slug = models.SlugField(blank=True, null=True, unique=True)

class ProfessionSubCategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    category = models.ForeignKey(ProfessionCategory, default='Unknown', on_delete=models.SET_DEFAULT)
    association = models.CharField(max_length=255, blank=True, default='')
    slug = models.SlugField(blank=True, null=True, unique=True)

class Profession(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    sub_category = models.ForeignKey(ProfessionSubCategory, default='Unknown', on_delete=models.SET_DEFAULT)
    association = models.CharField(max_length=255, blank=True, default='')
    slug = models.SlugField(blank=True, null=True, unique=True)
    rating = models.FloatField(blank=True, null=True)
    review = models.CharField(max_length=128)
