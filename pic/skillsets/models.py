from django.db import models
from django.urls import reverse
from django.utils.text import slugify


class JobCategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)


class JobSubCategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    category = models.ForeignKey(JobCategory, default='Unknown', on_delete=models.SET_DEFAULT)
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('job-subcategory', kwargs={
            'slug': self.slug,
            'category': self.category
        })

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)


class Job(models.Model):
    title = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    sub_category = models.ForeignKey(JobSubCategory, default='Unknown', on_delete=models.SET_DEFAULT)
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.title)

    def get_absolute_url(self):
        return reverse('job', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)


class Skill(models.Model):
    name = models.CharField(max_length=64, unique=True)
    description = models.TextField()
    category = models.ManyToManyField(JobCategory, related_name='skill_model_job_category')
    subcategory = models.ManyToManyField(JobSubCategory, related_name='skill_model_job_subcategory')
    job = models.ManyToManyField(Job, related_name='skill_model_job')
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('skill', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)
