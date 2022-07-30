from django.db import models
from django.forms import CharField
from django.urls import reverse
from django.utils.text import slugify

from skillsets.models import JobCategory, JobSubCategory, Job
from users.models import User

class Tag(models.Model):
    name = models.CharField(max_length=64)

    def __str__(self):
        return '%s' % (self.name)

def get_upload_path(self, filename):
    return 'users/user_{0}/articles/{1}/{2}'.format(self.author.id, self.slug, filename)

class Article(models.Model):

    GROUP_CHOICES = [
        ('general', 'General Information'),
        ('interviews', 'Interviews'),
        ('news', 'News'),
    ]

    STATUS_CHOICES = [
        ('pending', 'Pending'),
        ('published', 'Published'),
        ('unpublished', 'Unpublished')
    ]

    def default_approver():
        return User.objects.get(username='admin').pk

    title = models.CharField(max_length=255, unique=True)
    main_paragraph = models.CharField(max_length=255)
    body = models.TextField()
    group = models.CharField(max_length=12, choices=GROUP_CHOICES, default='general')
    video_link = models.URLField(blank=True, null=True)
    category = models.ManyToManyField(JobCategory, related_name='article_category', blank=True)
    subcategory = models.ManyToManyField(JobSubCategory, related_name='article_category', blank=True)
    job = models.ManyToManyField(Job, related_name='article_category', blank=True)
    tags = models.ManyToManyField(Tag, related_name='article_tags', blank=True)
    image_0 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_1 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_2 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_3 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_4 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_5 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_6 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_7 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_8 = models.ImageField(blank=True, upload_to=get_upload_path)
    image_9 = models.ImageField(blank=True, upload_to=get_upload_path)
    author = models.ForeignKey(User, on_delete=models.RESTRICT)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)
    status = models.CharField(max_length=12, choices=STATUS_CHOICES, default='pending')
    approver = models.ForeignKey(User, on_delete=models.SET_DEFAULT, default=default_approver, related_name='approver_user')
    slug = models.SlugField(max_length=255, unique=True, blank=True)
    likes = models.ManyToManyField(User, related_name='user_likes', blank=True)
    views = models.PositiveBigIntegerField(default=0)
    # pictures

    def __str__(self):
        return '%s %s' % (self.author, self.id)

    def get_absolute_url(self):
        return reverse('article', kwargs={
            'group': self.group,
            'slug': self.slug
            })

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)

