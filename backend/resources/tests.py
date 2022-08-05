from django.test import TestCase
from django.shortcuts import reverse


class ResourcesTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('resources'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'resources/resources.html')
