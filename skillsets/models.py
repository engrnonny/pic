from django.db import models
from django.urls import reverse
from django.utils.text import slugify

class Skill(models.Model):
    name = models.CharField(max_length=64, unique=True)
    description = models.TextField()
    rating = models.PositiveSmallIntegerField(default=0)
    slug = models.SlugField(blank=True, unique=True)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('skill', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)

class JobCategory(models.Model):
    name = models.CharField(max_length=128, unique=True)
    description = models.TextField(blank=True, null=True)
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, null=True)
    rating = models.PositiveSmallIntegerField(default=0)
    slug = models.SlugField(blank=True, unique=True)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse("job-category", kwargs={"slug": self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)

    class Meta:
        verbose_name_plural = 'Job Categories'

class JobSubCategory(models.Model):
    name = models.CharField(max_length=128, unique=True)
    category = models.ForeignKey(JobCategory, on_delete=models.PROTECT)
    description = models.TextField()
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name_plural = 'Job Subcategories'

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('job-subcategory', kwargs={
            'category': self.category.slug,
            'slug': self.slug
        })

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)


class Job(models.Model):
    title = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    sub_category = models.ForeignKey(JobSubCategory, on_delete=models.PROTECT)
    roles = models.TextField(blank=True, default='')
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.title)

    def get_absolute_url(self):
        return reverse('job', kwargs={
            'category': self.sub_category.category.slug,
            'subcategory': self.sub_category.slug,
            'slug': self.slug
        })

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)