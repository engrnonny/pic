from tkinter import CASCADE
from django.db import models
from users.models import User

class ad(models.Model):
    title = models.CharField(max_length=128)
    message = models.TextField(blank=True, default='')
    advertizer = models.ForeignKey(User, on_delete=CASCADE)

    def __str__(self):
        return '%s' % (self.title)