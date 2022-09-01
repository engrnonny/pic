from .models import Article, Tag
from skillsets.serializers import JobCategorySerializer, JobSubCategorySerializer, JobSerializer, SkillSerializer
from rest_framework import serializers

class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ['id', 'name', 'slug']

class ArticleSerializer(serializers.ModelSerializer):
    category = JobCategorySerializer(read_only=True, many=True)
    subcategory = JobSubCategorySerializer(read_only=True, many=True)
    job = JobSerializer(read_only=True, many=True)
    skills = SkillSerializer(read_only=True, many=True)
    tags = TagSerializer(read_only=True, many=True)
    class Meta:
        model = Article
        fields = ['id', 'title', 'main_paragraph', 'body', 'group', 'video_link', 'category', 'subcategory', 'job', 'skills', 'tags', 'author', 'created_on', 'modified_on', 'status', 'approver', 'slug', 'likes', 'read', 'views', 'article_review']