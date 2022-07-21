from django.db import models

class Article(models.Model):
    title = models.CharField(max_length=255, unique=True)
    body = models.TextField()
    slug = models.SlugField(unique=True)
    
    def __str__(self):
        return '%s' % (self.title)