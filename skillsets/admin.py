from django.contrib import admin
from .models import *

class SkillAdmin(admin.ModelAdmin):
    list_display = ('name',)

class JobCategoryAdmin(admin.ModelAdmin):
    list_display = ('name',)

class JobSubCategoryAdmin(admin.ModelAdmin):
    list_display = ('name',)

class JobAdmin(admin.ModelAdmin):
    list_display = ('title',)

admin.site.register(Skill, SkillAdmin)
admin.site.register(JobCategory, JobCategoryAdmin)
admin.site.register(JobSubCategory, JobSubCategoryAdmin)
admin.site.register(Job, JobAdmin)
