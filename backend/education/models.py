from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models

from skillsets.models import JobCategory, JobSubCategory, Job
from users.models import User


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
    alumni = models.ManyToManyField(User, related_name='graduates')
    category = models.ManyToManyField(JobCategory, related_name='job_categories')
    subcategory = models.ManyToManyField(JobSubCategory, related_name='job_subcategories')
    job = models.ManyToManyField(Job, related_name='institution_job')
    verified = models.BooleanField(default=False)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s %s' % (self.name, self.acronym)


class Certificate(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return '%s' % (self.name)


class Course(models.Model):
    name = models.CharField(max_length=255, blank=True, default='')
    job = models.ForeignKey(Job, related_name='job_course', on_delete=models.SET_NULL, blank=True, null=True)
    institution = models.ForeignKey(Institution, related_name='course_institution', on_delete=models.CASCADE)
    description = models.TextField(default='')
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
    certificate = models.ForeignKey(Certificate, related_name='course_certificate', blank=True)

    def __str__(self):
        return '%s %s' % (self.name, self.job)
