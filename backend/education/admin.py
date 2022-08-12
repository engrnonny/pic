from django.contrib import admin
from .models import Institution, Course


class InstitutionAdmin(admin.ModelAdmin):
    list_display = ('name', 'acronym')

class CourseAdmin(admin.ModelAdmin):
    list_display = ('name','job')

admin.site.register(Institution, InstitutionAdmin)
admin.site.register(Course, CourseAdmin)