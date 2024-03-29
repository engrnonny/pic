from django.db import models
from django.urls import reverse
from django.utils.text import slugify

class Skill(models.Model):
    GROUP_CHOICES = [
        ('soft', 'Soft'),
        ('hard', 'Hard'),
    ]

    name = models.CharField(max_length=64, unique=True)
    overview = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField()
    group = models.CharField(max_length=32, blank=True, choices=GROUP_CHOICES, null=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    association = models.ManyToManyField('users.Association', related_name='skill_associations', blank=True)
    rating = models.PositiveSmallIntegerField(default=0)
    slug = models.SlugField(blank=True, unique=True)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('skill', kwargs={'slug': self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)

class JobCategory(models.Model):
    name = models.CharField(max_length=128, unique=True)
    overview = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField()
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, null=True)
    association = models.ManyToManyField('users.Association', related_name='job_category_associations', blank=True)
    rating = models.PositiveSmallIntegerField(default=0)
    slug = models.SlugField(blank=True, unique=True)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse("job-category", kwargs={"slug": self.slug})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)

    class Meta:
        verbose_name_plural = 'Job Categories'

class JobSubCategory(models.Model):
    name = models.CharField(max_length=128, unique=True)
    category = models.ForeignKey(JobCategory, on_delete=models.PROTECT)
    overview = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField()
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    association = models.ManyToManyField('users.Association', related_name='job_subcategory_associations', blank=True)
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name_plural = 'Job Subcategories'

    def __str__(self):
        return '%s' % (self.name)

    def get_absolute_url(self):
        return reverse('job-subcategory', kwargs={
            'category': self.category.slug,
            'slug': self.slug
        })

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)


class Job(models.Model):
    title = models.CharField(max_length=255, unique=True)
    overview = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField()
    where = models.TextField(blank=True, null=True)
    work_environment = models.TextField(blank=True, null=True)
    subcategory = models.ForeignKey(JobSubCategory, on_delete=models.PROTECT, related_name="job_sub_category", blank=True, null=True)
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    work_start_time = models.TimeField(blank=True, null=True)
    work_end_time = models.TimeField(blank=True, null=True)
    min_salary = models.PositiveBigIntegerField(blank=True, null=True)
    max_salary = models.PositiveBigIntegerField(blank=True, null=True)
    risks = models.TextField(blank=True, default='')
    regulations = models.TextField(blank=True, default='')
    association = models.ManyToManyField('users.Association', related_name='job_associations', blank=True)
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.title)

    def get_absolute_url(self):
        return reverse('job', kwargs={
            'category': self.subcategory.category.slug,
            'subcategory': self.subcategory.slug,
            'slug': self.slug
        })

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)


class SubTitle(models.Model):
    name = models.CharField(max_length=32)
    job = models.ForeignKey(Job, related_name='job_subtitle', on_delete=models.CASCADE)
    description = models.TextField()
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    work_start_time = models.TimeField(blank=True, null=True)
    work_end_time = models.TimeField(blank=True, null=True)
    min_salary = models.PositiveBigIntegerField(blank=True, null=True)
    max_salary = models.PositiveBigIntegerField(blank=True, null=True)
    risks = models.TextField(blank=True, default='')
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)


class Level(models.Model):
    name = models.CharField(max_length=32)
    job = models.ForeignKey(Job, related_name='job_level', on_delete=models.CASCADE)
    description = models.TextField()
    skills = models.ManyToManyField(Skill, blank=True)
    outlook_details = models.TextField(blank=True, null=True)
    outlook_summary = models.CharField(max_length=32, blank=True, default='')
    work_start_time = models.TimeField(blank=True, null=True)
    work_end_time = models.TimeField(blank=True, null=True)
    min_salary = models.PositiveBigIntegerField(blank=True, null=True)
    max_salary = models.PositiveBigIntegerField(blank=True, null=True)
    risks = models.TextField(blank=True, default='')
    slug = models.SlugField(blank=True, unique=True)
    rating = models.PositiveSmallIntegerField(default=0)
    created_on = models.DateTimeField(auto_now_add=True)
    modified_on = models.DateTimeField(auto_now=True)

    def __str__(self):
        return '%s' % (self.name)

    # def get_absolute_url(self):
    #     return reverse('job', kwargs={
    #         'category': self.subcategory.category.slug,
    #         'subcategory': self.subcategory.slug,
    #         'slug': self.slug
    #     })

    # def save(self, *args, **kwargs):
    #     self.slug = slugify(self.title)
    #     return super().save(*args, **kwargs)


class Role(models.Model):
    category = models.ManyToManyField(JobCategory, related_name='category_roles', blank=True)
    subcategory = models.ManyToManyField(JobSubCategory, related_name='subcategory_roles', blank=True)
    job = models.ManyToManyField(Job, related_name='job_roles', blank=True)
    subtitle = models.ManyToManyField(SubTitle, related_name='subtitle_roles', blank=True)
    level = models.ManyToManyField(Level, related_name='level_roles', blank=True)
    description = models.CharField(max_length=255)

    def __str__(self):
        return '%s' % (self.category)


class Step(models.Model):
    number = models.PositiveBigIntegerField()
    category = models.ManyToManyField(JobCategory, blank=True)
    subcategory = models.ManyToManyField(JobSubCategory, blank=True)
    job = models.ManyToManyField(Job, blank=True)
    level = models.ManyToManyField(Level, blank=True)
    description = models.CharField(max_length=255)
    association = models.ForeignKey('users.Association', on_delete=models.SET_NULL, related_name='step_association', blank=True, null=True)

    def __str__(self):
        return '%s' % (self.category)