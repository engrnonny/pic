from .models import Association, Review
from rest_framework import serializers

class AssociationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Association
        fields = ['id', 'name', 'acronym', 'description', 'city', 'lga', 'state', 'email', 'phone', 'url', 'slug', 'rating', 'created_on', 'modified_on']

class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = ['id', 'rating', 'comment', 'reviewer', 'anonymous', 'created_on', 'modified_on']
