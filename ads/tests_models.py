from django.test import TestCase

from .models import Ad
from users.models import User

class AdTestCase(TestCase):
    def setUp(self):
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
        # login = self.client.login(username='testuser', password='12345')
        Ad.objects.create(
            title="Indomie main advert",
            message="This is a test message",
            advertizer=self.user
            )

    def test_ad_object_created(self):
        ad = Ad.objects.get(title="Indomie main advert")
        self.assertEqual(ad.title, 'Indomie main advert')
        self.assertEqual(ad.message, 'This is a test message')
        # self.assertEqual(ad.job_category, '')
        # self.assertEqual(ad.job_subcategory, '')
        # self.assertEqual(ad.job, '')
        self.assertEqual(ad.video_link, '')
        self.assertEqual(ad.advertizer, self.user)
        # self.assertEqual(ad.related_company, '')
        self.assertEqual(ad.active, False)
        self.assertEqual(ad.slug, 'indomie-main-advert')
        self.assertEqual(ad.get_absolute_url(), '/ads/indomie-main-advert/')