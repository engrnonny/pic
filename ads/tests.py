from django.test import TestCase
from django.shortcuts import reverse

class AdsTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('ads'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'ads/ads.html')


class AdTest(TestCase):

    def test_get(self):
        # url = reverse('ad', args=[1988])
        # self.assertEqual(url, '/ads/1988/')

        # Non existing ad object cannot be retrieved

        response = self.client.get(reverse('ad', args=[1988]))
        self.assertEqual(response.status_code, 404)

        # Existing ad object can be retrieved and rendered

        response = self.client.get(reverse('ad', args='test-1'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'ads/ad.html')

