from django.contrib import admin
from .models import Association, Company, Review, User

class AssociationAdmin(admin.ModelAdmin):
    list_display = ('name', 'acronym')

class UserAdmin(admin.ModelAdmin):
    list_display = ('username', 'first_name', 'last_name')

class ReviewAdmin(admin.ModelAdmin):
    list_display = ('reviewer',)

admin.site.register(Association, AssociationAdmin)
admin.site.register(User, UserAdmin)
admin.site.register(Company)
admin.site.register(Review, ReviewAdmin)