from django.contrib import admin
from .models import User, Company, Review

class UserAdmin(admin.ModelAdmin):
    list_display = ('username', 'first_name', 'last_name')

class ReviewAdmin(admin.ModelAdmin):
    list_display = ('reviewer',)

admin.site.register(User, UserAdmin)
admin.site.register(Company)
admin.site.register(Review, ReviewAdmin)