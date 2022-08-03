from django.test import TestCase

from .models import Ad
from skillsets.models import Skill, JobCategory, JobSubCategory, Job
from users.models import User, Company

class AdModelTestCase(TestCase):
    def setUp(self):

        # Creating a User object

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

        # Creating company objects

        company_1 = Company.objects.create(
            name="Indomie",
            bio="This is a test message",
            creator=self.user
            )

        company_2 = Company.objects.create(
            name="Dangote",
            bio="This is a test message",
            creator=self.user
            )

        # Creating Skill objects

        skill_1 = Skill.objects.create(
            name="Skill One",
            description="This is a test message"
            )

        skill_2 = Skill.objects.create(
            name="Skill Two",
            description="This is a test message"
            )

        # Creating JobCategory objects

        category_1 = JobCategory.objects.create(
            name="Category One",
            description="This is a test message"
            )

        category_2 = JobCategory.objects.create(
            name="Category Two",
            description="This is a test message"
            )

        # Creating JobSubCategory objects

        subcategory_1 = JobSubCategory.objects.create(
            name="Subcategory One",
            description="This is a test message",
            category=category_1
            )

        subcategory_2 = JobSubCategory.objects.create(
            name="Subcategory Two",
            description="This is a test message",
            category=category_1
            )

        # Creating Job objects

        job_1= Job.objects.create(
            title="Job One",
            description="This is a test message",
            subcategory=subcategory_1
            )

        job_2= Job.objects.create(
            title="Job Two",
            description="This is a test message",
            subcategory=subcategory_1
            )

        # Creating Ad objects

        ad_1 = Ad.objects.create(
            title="Indomie main advert",
            message="This is a test message",
            advertizer=self.user
            )
        ad_1.job_category.add(category_1)
        ad_1.save()
        ad_1.job_category.add(category_2)
        ad_1.save()
        ad_1.job_subcategory.add(subcategory_1)
        ad_1.save()
        ad_1.job_subcategory.add(subcategory_2)
        ad_1.save()
        ad_1.job.add(job_1)
        ad_1.save()
        ad_1.job.add(job_2)
        ad_1.save()
        ad_1.skills.add(skill_1)
        ad_1.save()
        ad_1.skills.add(skill_2)
        ad_1.save()
        ad_1.related_company.add(company_1)
        ad_1.save()
        ad_1.related_company.add(company_2)
        ad_1.save()

        ad_2 = Ad.objects.create(
            title="Dangote main advert",
            message="This is a test message",
            advertizer=self.user
            )


    def test_ad_object_created(self):
        ad_1 = Ad.objects.get(title="Indomie main advert")
        self.assertEqual(ad_1.title, 'Indomie main advert')
        self.assertEqual(ad_1.message, 'This is a test message')
        self.assertEqual(ad_1.job_category.count(), 2)
        self.assertEqual(ad_1.job_subcategory.count(), 2)
        self.assertEqual(ad_1.job.count(), 2)
        # self.assertEqual(ad_1.video_link, '')
        self.assertEqual(ad_1.advertizer, self.user)
        self.assertEqual(ad_1.related_company.count(), 2)
        self.assertEqual(ad_1.active, False)
        self.assertEqual(ad_1.slug, 'indomie-main-advert')
        self.assertEqual(ad_1.get_absolute_url(), '/ads/indomie-main-advert/')

    def test_advertizer_ads_count(self):
        self.assertEqual(self.user.advertizer_user.count(), 2)