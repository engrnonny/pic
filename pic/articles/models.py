from django.db import models

from users.models import *


class Article(models.Model):
    title = models.CharField(max_length=255, unique=True)
    main_paragraph = models.CharField(max_length=255)
    body = models.TextField()
    author = models.ForeignKey(User, on_delete=models.RESTRICT)
    video_link = models.URLField(blank=True, null=True)
    category = models.ManyToManyField(
        JobCategory, related_name='article_category')
    subcategory = models.ManyToManyField(
        JobSubCategory, related_name='article_category')
    job = models.ManyToManyField(Job, related_name='article_category')
    slug = models.SlugField(unique=True)
    likes = models.ManyToManyField(User, related_name='user_likes')
    views = models.PositiveBigIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    # pictures

    def __str__(self):
        return '%s' % (self.title, self.author)
