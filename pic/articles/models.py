from django.db import models

from users.models import User

class Article(models.Model):
    title = models.CharField(max_length=255, unique=True)
    main_paragraph = models.CharField(max_length=255)
    body = models.TextField()
    author = models.ForeignKey(User, on_delete=models.RESTRICT)
    video_link = models.URLField(blank=True, null=True)
    slug = models.SlugField(unique=True)
    likes = models.ManyToManyField(User, related_name = 'user_likes', blank=True, null=True)
    views = models.PositiveBigIntegerField(default=0)
    date_created = models.DateTimeField(auto_now_add=True)

    #pictures
    #youtube

    def __str__(self):
        return '%s' % (self.title, self.author)

class Comment(models.Model):
    article = models.ForeignKey(Article, on_delete=models.CASCADE)
    message = models.TextField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '%s' % (self.article.title)