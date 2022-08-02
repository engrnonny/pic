from django.test import TestCase
from django.shortcuts import reverse


class SkillsetsTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('skillsets'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'skillsets/skillsets.html')


class JobCategoriesTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('job-categories'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'skillsets/job_categories.html')


class JobCategoryTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('job-category'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'skillsets/job_category.html')


class JobSubcategoryTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('job-subcategory'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'skillsets/job_subcategory.html')



class JobTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('job'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'skillsets/job.html')



class SkillTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('skill'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'skillsets/skill.html')

