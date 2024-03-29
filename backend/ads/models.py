from django.db import models
from users.models import User, Company
from skillsets.models import Skill, JobCategory, JobSubCategory, Job
from django.utils.text import slugify


class Ad(models.Model):
    title = models.CharField(max_length=128)
    message = models.TextField(blank=True, default='')
    job_category = models.ManyToManyField(JobCategory, related_name='ad_model_job_category', blank=True)
    job_subcategory = models.ManyToManyField(JobSubCategory, related_name='ad_model_job_subcategory', blank=True)
    job = models.ManyToManyField(Job, related_name='ad_model_job', blank=True)
    skills = models.ManyToManyField(Skill, related_name='ad_model_skills', blank=True)
    video_link = models.URLField(blank=True, default='')
    advertizer = models.ForeignKey(User, on_delete=models.CASCADE, related_name='advertizer_user')
    related_company = models.ManyToManyField(Company, related_name='related_company', blank=True)
    active = models.BooleanField(default=False)
    link = models.URLField(blank=True, default='')
    slug = models.SlugField(blank=True)
    user_clicks = models.ManyToManyField(User, related_name='user_ad_clicks', blank=True)
    general_clicks = models.PositiveBigIntegerField(default=0)
    views = models.PositiveBigIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.title)

    def get_absolute_url(self):
        from django.urls import reverse
        return reverse('ad', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)
