from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models

from skillsets.models import JobCategory, JobSubCategory, Job, Skill


class Institution(models.Model):
    name = models.CharField(max_length=255)
    acronym = models.CharField(max_length=12, blank=True, default='')
    description = models.TextField(default='')
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    country = models.CharField(max_length=32, blank=True, default='')
    phone = models.CharField(max_length=24, blank=True, default='')
    email = models.EmailField(blank=True, default='')
    category = models.ManyToManyField(JobCategory, related_name='job_categories')
    subcategory = models.ManyToManyField(JobSubCategory, related_name='job_subcategories')
    job = models.ManyToManyField(Job, related_name='institution_job')
    verified = models.BooleanField(default=False)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s %s' % (self.name, self.acronym)


class Course(models.Model):
    CERTIFICATE_TYPE_CHOICES = [
        ('B. Eng', 'B. Eng'),
        ('MSc', 'Msc'),
    ]

    LEVEL_CHOICES = [
        ('Masters degree', 'Masters degree'),
        ('Bachelors degree', 'Bachelors degree'),
        ('Secondary Certificate', 'Secondary Certificate'),
    ]

    name = models.CharField(max_length=255, blank=True, default='')
    institution = models.ForeignKey(Institution, related_name='course_institution', on_delete=models.PROTECT, blank=True, null=True)
    job = models.ForeignKey(Job, related_name='course_institution', on_delete=models.SET_NULL, blank=True, null=True)
    skill = models.ForeignKey(Skill, related_name='course_institution', on_delete=models.SET_NULL, blank=True, null=True)
    overview = models.CharField(max_length=255, default='', blank=True)
    description = models.TextField(default='', blank=True)
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    country = models.CharField(max_length=32, blank=True, default='')
    phone = models.CharField(max_length=24, blank=True, default='')
    email = models.EmailField(blank=True, default='')
    online = models.BooleanField(default=False)
    cost = models.PositiveSmallIntegerField()
    duration = models.PositiveSmallIntegerField(default=1, validators=[MaxValueValidator(5), MinValueValidator(1)])
    certificate_type = models.CharField(max_length=128, blank=True, choices=CERTIFICATE_TYPE_CHOICES)
    level = models.CharField(max_length=32, choices=LEVEL_CHOICES)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s %s' % (self.name, self.job)
