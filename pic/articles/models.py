from django.db import models

from users.models import *

class Article(models.Model):
    title = models.CharField(max_length=255, unique=True)
    main_paragraph = models.CharField(max_length=255)
    body = models.TextField()
    author = models.ForeignKey(User, on_delete=models.RESTRICT)
    video_link = models.URLField(blank=True, null=True)
    category = models.ManyToManyField(ProfessionCategory, related_name = 'article_category', blank=True, null=True)
    subcategory = models.ManyToManyField(ProfessionSubCategory, related_name = 'article_category', blank=True, null=True)
    profession = models.ManyToManyField(Profession, related_name = 'article_category', blank=True, null=True)
    slug = models.SlugField(unique=True)
    likes = models.ManyToManyField(User, related_name = 'user_likes', blank=True, null=True)
    views = models.PositiveBigIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    #pictures

    def __str__(self):
        return '%s' % (self.title, self.author)

class Comment(models.Model):
    article = models.ForeignKey(Article, on_delete=models.CASCADE)
    message = models.TextField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.article.title)