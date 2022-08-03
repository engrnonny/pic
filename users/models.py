from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models
from django.urls import reverse
from django.utils.text import slugify

from skillsets.models import JobCategory, JobSubCategory, Job, Skill
# from articles.models import Article


class User(AbstractUser):
    GENDER_CHOICES = [
        ('F', 'FEMALE'),
        ('M', 'MALE'),
    ]

    TITLE_CHOICES = [
        ('BARR', 'Barr'),
        ('DR', 'Dr'),
        ('ENGR', 'Engr'),
        ('PROF', 'Prof'),
    ]

    AUTHOR_STATUS_CHOICES = [
        ('N', 'NO'),
        ('P', 'PENDING'),
        ('Y', 'YES'),
    ]

    STATE_CHOICES = [
        ('Abia', 'Abia'),
        ('Adamawa', 'Adamawa'),
        ('Anambra', 'Anambra'),
        ('Bayelsa', 'Bayelsa'),
        ('Benue', 'Benue'),
        ('Borno', 'Borno'),
        ('Cross Rivers', 'Cross Rivers'),
        ('Delta', 'Delta'),
        ('Edo', 'Edo'),
        ('Imo', 'Imo'),
        ('Lagos', 'Lagos'),
        ('Ogun', 'Ogun'),
        ('Oyo', 'Oyo'),
        ('Rivers', 'Rivers'),
        ('FCT', 'FCT'),
    ]

    title = models.CharField(max_length=6, choices=TITLE_CHOICES, blank=True, default='')
    phone_no = models.CharField(max_length=11, unique=True)
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES)
    birthday = models.DateField(blank=True, null=True)
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32)
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32)
    country = models.CharField(max_length=32)
    bio = models.TextField(blank=True, default='')
    profile_pic = models.ImageField(blank=True, null=True, upload_to="main/users/profile-pics")
    linkedin = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField(unique=True, blank=True)
    author = models.CharField(max_length=1, choices=AUTHOR_STATUS_CHOICES, default='N')
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
    article = models.ForeignKey('articles.Article', on_delete=models.CASCADE, blank=True, null=True)
    rating = models.PositiveSmallIntegerField(validators=[MaxValueValidator(5), MinValueValidator(1)])
    comment = models.TextField(blank=True, default='')
    reviewer = models.ForeignKey(User, default='Anonymous', on_delete=models.SET_DEFAULT)
    anonymous = models.BooleanField(default=False)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.article)
