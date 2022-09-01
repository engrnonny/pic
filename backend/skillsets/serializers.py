from .models import Skill, JobCategory, JobSubCategory, Job, SubTitle, Level, Role, Step
from users.serializers import AssociationSerializer
from rest_framework import serializers

class SkillSerializer(serializers.ModelSerializer):
    association = AssociationSerializer(read_only=True, many=True)

    class Meta:
        model = Skill
        fields = ['id', 'name', 'overview', 'description', 'group', 'outlook_details', 'outlook_summary', 'association', 'rating', 'slug', 'created_on', 'modified_on']

class JobCategorySerializer(serializers.ModelSerializer):
    skills = SkillSerializer(read_only=True, many=True)
    association = AssociationSerializer(read_only=True, many=True)

    class Meta:
        model = JobCategory
        fields = ['id', 'name', 'overview', 'description', 'skills', 'outlook_details', 'outlook_summary', 'association', 'rating', 'slug','created_on', 'modified_on']

class JobSubCategorySerializer(serializers.ModelSerializer):
    skills = SkillSerializer(read_only=True, many=True)
    association = AssociationSerializer(read_only=True, many=True)
    category = JobCategorySerializer(read_only=True, many=True)

    class Meta:
        model = JobSubCategory
        fields = ['id', 'name', 'category', 'overview', 'description', 'skills', 'outlook_details', 'outlook_summary', 'association', 'rating', 'slug','created_on', 'modified_on']

class JobSerializer(serializers.ModelSerializer):
    skills = SkillSerializer(read_only=True, many=True)
    association = AssociationSerializer(read_only=True, many=True)
    subcategory = JobSubCategorySerializer(read_only=True, many=True)

    class Meta:
        model = Job
        fields = ['id', 'title', 'overview', 'description', 'where', 'work_environment', 'subcategory', 'skills', 'outlook_details', 'outlook_summary', 'work_start_time', 'work_end_time', 'min_salary', 'max_salary', 'risks', 'regulations', 'association', 'rating', 'slug','created_on', 'modified_on']

class SubTitleSerializer(serializers.ModelSerializer):
    skills = SkillSerializer(read_only=True, many=True)
    job = JobSerializer(read_only=True, many=True)

    class Meta:
        model = SubTitle
        fields = ['id', 'name', 'job', 'description', 'skills', 'outlook_details', 'outlook_summary', 'work_start_time', 'work_end_time', 'min_salary', 'max_salary', 'risks', 'rating', 'slug','created_on', 'modified_on']

class LevelSerializer(serializers.ModelSerializer):
    skills = SkillSerializer(read_only=True, many=True)
    job = JobSerializer(read_only=True, many=True)

    class Meta:
        model = Level
        fields = ['id', 'name', 'job', 'description', 'skills', 'outlook_details', 'outlook_summary', 'work_start_time', 'work_end_time', 'min_salary', 'max_salary', 'risks', 'rating', 'slug','created_on', 'modified_on']

class RoleSerializer(serializers.ModelSerializer):
    category = JobCategorySerializer(read_only=True, many=True)
    subcategory = JobSubCategorySerializer(read_only=True, many=True)
    job = JobSerializer(read_only=True, many=True)
    subtitle = SubTitleSerializer(read_only=True, many=True)
    level = LevelSerializer(read_only=True, many=True)

    class Meta:
        model = Role
        fields = ['id', 'category', 'subcategory', 'job', 'subtitle', 'level', 'description']

class StepSerializer(serializers.ModelSerializer):
    category = JobCategorySerializer(read_only=True, many=True)
    subcategory = JobSubCategorySerializer(read_only=True, many=True)
    job = JobSerializer(read_only=True, many=True)
    level = LevelSerializer(read_only=True, many=True)
    association = AssociationSerializer(read_only=True, many=True)

    class Meta:
        model = Step
        fields = ['id', 'number', 'category', 'subcategory', 'job', 'level', 'description', 'association']