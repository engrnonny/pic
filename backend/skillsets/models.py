from django.db import models
from django.urls import reverse
from django.utils.text import slugify
from users.models import Association

class Skill(models.Model):
    name = models.CharField(max_length=64, unique=True)
    description = models.TextField()
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
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
    description = models.TextField()
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
    where = models.TextField(blank=True, null=True)
    work_environment = models.TextField(blank=True, null=True)
    subcategory = models.ForeignKey(JobSubCategory, on_delete=models.PROTECT, related_name="job_sub_category", blank=True, null=True)
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    work_start_time = models.TimeField(blank=True, null=True)
    work_end_time = models.TimeField(blank=True, null=True)
    min_salary = models.PositiveBigIntegerField(blank=True, null=True)
    max_salary = models.PositiveBigIntegerField(blank=True, null=True)
    risks = models.TextField(blank=True, default='')
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.title)

    def get_absolute_url(self):
        return reverse('job', kwargs={
            'category': self.subcategory.category.slug,
            'subcategory': self.subcategory.slug,
            'slug': self.slug
        })

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)


class Level(models.Model):
    name = models.CharField(max_length=32)
    job = models.ForeignKey(Job, related_name='job_level', on_delete=models.CASCADE)
    description = models.TextField()
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    work_start_time = models.TimeField(blank=True, null=True)
    work_end_time = models.TimeField(blank=True, null=True)
    min_salary = models.PositiveBigIntegerField(blank=True, null=True)
    max_salary = models.PositiveBigIntegerField(blank=True, null=True)
    risks = models.TextField(blank=True, default='')
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    # def get_absolute_url(self):
    #     return reverse('job', kwargs={
    #         'category': self.subcategory.category.slug,
    #         'subcategory': self.subcategory.slug,
    #         'slug': self.slug
    #     })

    # def save(self, *args, **kwargs):
    #     self.slug = slugify(self.title)
    #     return super().save(*args, **kwargs)


class Role(models.Model):
    category = models.ManyToManyField(JobCategory, blank=True)
    subcategory = models.ManyToManyField(JobSubCategory, blank=True)
    job = models.ManyToManyField(Job, blank=True)
    level = models.ManyToManyField(Level, blank=True)
    description = models.CharField(max_length=255)

    def __str__(self):
        return '%s' % (self.category)


class Step(models.Model):
    number = models.PositiveBigIntegerField()
    category = models.ManyToManyField(JobCategory, blank=True)
    subcategory = models.ManyToManyField(JobSubCategory, blank=True)
    job = models.ManyToManyField(Job, blank=True)
    level = models.ManyToManyField(Level, blank=True)
    description = models.CharField(max_length=255)
    association = models.ForeignKey(Association, on_delete=models.SET_NULL, related_name='step_association', blank=True, null=True)

    def __str__(self):
        return '%s' % (self.category)