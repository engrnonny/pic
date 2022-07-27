from django.db import models
from django.forms import CharField
from django.urls import reverse
from users.models import *

class Tag(models.Model):
    name = models.CharField(max_length=64)

    def __str__(self):
        return '%s' % (self.name)

class Article(models.Model):
    title = models.CharField(max_length=255, unique=True)
    main_paragraph = models.CharField(max_length=255)
    body = models.TextField()
    author = models.ForeignKey(User, on_delete=models.RESTRICT)
    video_link = models.URLField(blank=True, null=True)
    category = models.ManyToManyField(JobCategory, related_name='article_category', blank=True)
    subcategory = models.ManyToManyField(JobSubCategory, related_name='article_category', blank=True)
    job = models.ManyToManyField(Job, related_name='article_category', blank=True)
    tag = models.ManyToManyField(Tag, related_name='article_tag', blank=True)
    published = models.BooleanField(default=False)
    slug = models.SlugField(max_length=255, unique=True, blank=True)
    likes = models.ManyToManyField(User, related_name='user_likes', blank=True)
    views = models.PositiveBigIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    # pictures

    def __str__(self):
        return '%s' % (self.author)

    def get_absolute_url(self):
        return reverse('article', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)

