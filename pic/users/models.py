from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.db import models
from skillsets.models import *

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
    profile_pic = models.ImageField(blank=True, null=True, upload_to="main/users/profile-pics")
    linkedin = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField(unique=True)
    author = models.BooleanField(default=False)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s %s' % (self.phone_no, self.gender)

"""
    def get_absolute_url(self):
        from django.urls import reverse
        return reverse('people-detail', kwargs={'pk' : self.pk})
"""
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
    registration_no = models.CharField(max_length=255, blank=True, null=True, unique=True)
    registration_date = models.DateField(null=True, blank=True)
    email = models.EmailField(unique=True, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, default='')
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    country = models.CharField(max_length=32, blank=True, default='')
    employees = models.PositiveIntegerField(blank=True, null=True)
    rating = models.FloatField(blank=True, null=True)
    slug = models.SlugField(blank=True, null=True, unique=True)
    creator = models.ForeignKey(User, default='Unknown', on_delete=models.SET_DEFAULT)
    verified = models.BooleanField(default=False)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name_plural = 'companies'

    def __str__(self):
        return '%s' % (self.name)

class UserWorkProfile(models.Model):
    user = models.ForeignKey(User, default='Unknown', on_delete=models.CASCADE)
    profession = models.ForeignKey(Profession, default='Unknown', on_delete=models.PROTECT)
    level = models.CharField(max_length=64)
    employment_type = models.CharField(max_length=12, blank=True, default='')
    description= models.TextField(blank=True, default='')
    company = models.ForeignKey(Company, blank=True, default='', on_delete=models.PROTECT)
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    country = models.CharField(max_length=32, blank=True, default='')
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)
    current_profession = models.BooleanField(default=False)
    rating = models.FloatField(blank=True, null=True)
    review = models.CharField(max_length=128, blank=True,default='')
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
    acronym = models.CharField(max_length=12)
    description = models.TextField(blank=True, default='')
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    email = models.EmailField(unique=True, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, default='')
    url = models.URLField(blank=True, null=True, unique=True)
    members = models.ManyToManyField(User, related_name="Users", blank=True, null=True)
    slug = models.SlugField(unique=True)
    rating = models.FloatField(blank=True, null=True)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    # logo

    def __str__(self):
        return '%s' % (self.name)

class Review(models.Model):
    name = models.CharField(max_length=255, verbose_name='name of model object')
    model = models.CharField(max_length=128, verbose_name='name of the model')
    model_id = models.PositiveIntegerField(verbose_name='id of the model object')
    comment = models.TextField()
    reviewer = models.ForeignKey(User, default='Anonymous', on_delete=models.SET_DEFAULT)
    anonymous = models.BooleanField(default=False)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

"""
# 'related_name' should be plural
    followers = models.ManyToManyField(settings.AUTH_USER_MODEL, related_name = 'user_followers', blank=True)
"""
