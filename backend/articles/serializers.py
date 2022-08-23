from .models import Article, Tag
from rest_framework import serializers

class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ['id', 'name', 'slug']

class ArticleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Article
        fields = ['id', 'title', 'main_paragraph', 'body', 'group', 'video_link', 'category', 'subcategory', 'job', 'skills', 'tags', 'author', 'created_on', 'modified_on', 'status', 'approver', 'slug', 'likes', 'read', 'views', 'article_review']