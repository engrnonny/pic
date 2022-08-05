from django.contrib import admin
from .models import Article, Tag

class ArticleAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'author', 'group', 'status')

class TagAdmin(admin.ModelAdmin):
    list_display = ('name',)

admin.site.register(Article, ArticleAdmin)
admin.site.register(Tag, TagAdmin)
