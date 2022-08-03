from django.test import TestCase
from django.shortcuts import reverse

from .models import Ad
from users.models import User

class AdsTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('ads'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'ads/ads.html')


class AdTest(TestCase):

    def create_ad_object(self):
        self.user = User.objects.create_user(
            username='testuser',
            password='27euyayg78q8dgoyo',
            email='test@test.com',
            phone_no='07012345678',
            gender='M',
            city='test',
            state='test',
            country='test'
            )

        Ad.objects.create(
            title="Indomie main advert",
            message="This is a test message",
            advertizer=self.user
            )

    def test_get(self):

        # Non existing ad object cannot be retrieved

        ad = Ad.objects.get(title="Indomie main advert")
        response = self.client.get(reverse('ad', args=ad.slug))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'ads/ad.html')

        # Non-existing ad object cannot be retrieved

        response = self.client.get(reverse('ad', args='test-1'))
        self.assertEqual(response.status_code, 404)

