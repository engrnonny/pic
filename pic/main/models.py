from django.conf import settings
from django.contrib.auth.models import AbstractUser
from django.db import models

# Create your models here.
class User(AbstractUser):
    phone_no = models.CharField(max_length=11, blank=True, null=True, unique=True)
    gender = models.CharField(max_length=8)
    birthday = models.DateField()
    address = models.CharField(max_length=255, blank=True, default='')
    city = models.CharField(max_length=32)
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32)
    country = models.CharField(max_length=32)
    profile_pic = models.ImageField(blank=True, null=True, upload_to="main/users/profile-pics")
    linkedin = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField()

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
    name = models.CharField(max_length=255, blank=True, default='')
    bio = models.TextField()
    registration_no = models.CharField(max_length=255, blank=True, default='', unique=True)
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
    slug = models.SlugField(blank=True, null=True)
    creator = models.ForeignKey(settings.AUTH_USER_MODEL, default='Unknown', on_delete=models.SET_DEFAULT)

    class Meta:
        verbose_name_plural = 'companies'

    def __str__(self):
        return f"{self.name} - {self.bio}"

class ProfessionCategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    association = models.CharField(max_length=255, blank=True, default='')
    slug = models.SlugField(blank=True, null=True)

class ProfessionSubcategory(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    category = models.ForeignKey(ProfessionCategory, default='Unknown', on_delete=models.SET_DEFAULT)
    association = models.CharField(max_length=255, blank=True, default='')
    slug = models.SlugField(blank=True, null=True)

class Profession(models.Model):
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()
    sub_category = models.ForeignKey(ProfessionSubcategory, default='Unknown', on_delete=models.SET_DEFAULT)
    association = models.CharField(max_length=255, blank=True, default='')
    slug = models.SlugField(blank=True, null=True)
    rating = models.FloatField(blank=True, null=True)
    review = models.CharField(max_length=128)

class UserWorkProfile(models.Model):
    user = models.ForeignKey(User, default='Unknown', on_delete=models.CASCADE)
    profession = models.ForeignKey(Profession, default='Unknown', on_delete=models.PROTECT)
    level = models.CharField(max_length=64)
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
    review = models.CharField(max_length=128)

class Association(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True, unique=True)
    description = models.TextField()
    city = models.CharField(max_length=32, blank=True, default='')
    lga = models.CharField(max_length=32, blank=True, default='')
    state = models.CharField(max_length=32, blank=True, default='')
    email = models.EmailField(unique=True, blank=True, null=True)
    phone = models.CharField(max_length=11, blank=True, default='')
    url = models.URLField(blank=True, null=True, unique=True)
    slug = models.SlugField(blank=True, null=True)


"""
# 'related_name' should be plural
    followers = models.ManyToManyField(settings.AUTH_USER_MODEL, related_name = 'user_followers', blank=True)
    following = models.ManyToManyField(settings.AUTH_USER_MODEL, related_name = 'user_followings', blank=True)
"""
