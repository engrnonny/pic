from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.db import models
from skillsets.models import *
from django.urls import reverse
from django.utils.text import slugify

# Create your models here.


class User(AbstractUser):
    phone_no = models.CharField(max_length=11, unique=True)
    gender = models.CharField(max_length=8)
    birthday = models.DateField()
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32)
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32)
    country = models.CharField(max_length=32)
    bio = models.TextField(blank=True, default='')
    profile_pic = models.ImageField(
        blank=True, null=True, upload_to="main/users/profile-pics")
    linkedin = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField(unique=True, blank=True)
    author = models.BooleanField(default=False)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s %s' % (self.username, self.first_name)

    def get_absolute_url(self):
        return reverse('user-profile', kwargs={'slug': self.slug})

    # automatically creating Slug whenever a model object is created
    def save(self, *args, **kwargs):
        self.slug = slugify(self.username)
        return super().save(*args, **kwargs)


"""
# Use the below code for file upload by user. Remember to use separate folders based on the usage of the files. E.g, profile pics should be uploaded to a folder called "profile pictures", etc.

    def get_upload_path(instance, filename):
        return os.path.join('account/avatars/', now().date().strftime("%Y/%m/%d"), filename)

    class User(AbstractUser):
        avatar = models.ImageField(blank=True, upload_to=get_upload_path)
"""


class Company(models.Model):
    name = models.CharField(max_length=255, default='')
    bio = models.TextField()
    registration_no = models.CharField(
        max_length=255, blank=True, null=True, unique=True)
    registration_date = models.DateField(null=True, blank=True)
    email = models.EmailField(unique=True, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, default='')
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    country = models.CharField(max_length=32, blank=True, default='')
    employees = models.PositiveIntegerField(blank=True, null=True)
    employee_users = models.ManyToManyField(
        User, related_name='registered_users')
    rating = models.PositiveSmallIntegerField(default=0)
    slug = models.SlugField(blank=True, unique=True)
    creator = models.ForeignKey(
        User, default='Unknown', on_delete=models.SET_DEFAULT)
    verified = models.BooleanField(default=False)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name_plural = 'companies'

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('company-profile', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)


class UserWorkProfile(models.Model):
    user = models.ForeignKey(User, default='Unknown', on_delete=models.CASCADE)
    job = models.ForeignKey(Job, default='Unknown', on_delete=models.PROTECT)
    level = models.CharField(max_length=64)
    employment_type = models.CharField(max_length=12, blank=True, default='')
    description = models.TextField(blank=True, default='')
    company = models.ForeignKey(
        Company, blank=True, default='', on_delete=models.PROTECT)
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    country = models.CharField(max_length=32, blank=True, default='')
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)
    current_job = models.BooleanField(default=False)
    rating = models.PositiveSmallIntegerField(default=0)
    review = models.CharField(max_length=128, blank=True, default='')
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.user.username)


class UserQualification(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.user)


class Association(models.Model):
    name = models.CharField(max_length=255, unique=True)
    acronym = models.CharField(max_length=12, blank=True, default='')
    description = models.TextField(blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    email = models.EmailField(unique=True, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, default='')
    url = models.URLField(blank=True, null=True, unique=True)
    members = models.ManyToManyField(User, related_name="users")
    job_category = models.ManyToManyField(JobCategory, related_name='association_model_job_category')
    job_subcategory = models.ManyToManyField(JobSubCategory, related_name='association_model_job_subcategory')
    job = models.ManyToManyField(Job, related_name='association_model_job')
    skill = models.ManyToManyField(Skill, related_name='association_model_skill')
    slug = models.SlugField(unique=True)
    rating = models.FloatField(blank=True, null=True)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)
    # logo

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('association-profile', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)


class Review(models.Model):
    object_name = models.CharField(
        max_length=255, verbose_name='name of model object')
    object_model = models.CharField(
        max_length=128, verbose_name='name of the model')
    object_id = models.PositiveIntegerField(
        verbose_name='id of the model object')
    rating = models.PositiveSmallIntegerField(default=0)
    comment = models.TextField(blank=True, default='')
    reviewer = models.ForeignKey(
        User, default='Anonymous', on_delete=models.SET_DEFAULT)
    anonymous = models.BooleanField(default=False)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)
