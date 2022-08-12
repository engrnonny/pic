from .models import Ad
from rest_framework import serializers

class AdSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ad
        fields = ['title', 'message', 'job_category', 'job_subcategory', 'job', 'skills', 'video_link', 'advertizer', 'related_company', 'active', 'link', 'slug', 'user_clicks', 'general_clicks', 'views', 'created_on', 'modified_on']