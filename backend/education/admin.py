from django.contrib import admin
from .models import Institution, Certificate, Course


class InstitutionAdmin(admin.ModelAdmin):
    list_display = ('name', 'acronym')

class CertificateAdmin(admin.ModelAdmin):
    list_display = ('name',)

class CourseAdmin(admin.ModelAdmin):
    list_display = ('name','job')

admin.site.register(Institution, InstitutionAdmin)
admin.site.register(Certificate, CertificateAdmin)
admin.site.register(Course, CourseAdmin)