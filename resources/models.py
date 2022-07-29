from django.db import models
from users.models import User

class Survey(models.Model):
    name = models.CharField(max_length=225)
    surveyor = models.ForeignKey(User, on_delete=models.CASCADE)
    description = models.TextField()
    rating = models.PositiveIntegerField(default=0)
    # questions
    # answers

    def __str__(self):
        return '%s' % (self.name)