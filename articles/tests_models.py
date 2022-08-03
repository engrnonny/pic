from django.test import TestCase

from .models import Article, Tag
from skillsets.models import Skill, JobCategory, JobSubCategory, Job
from users.models import User, Company

class ArticleModelTestCase(TestCase):
    def setUp(self):

        # Creating User objects

        self.user = User.objects.create_user(
            username='testuser_1',
            password='27euyayg78q8dgoyo',
            email='test@test.com',
            phone_no='07012345678',
            gender='M',
            city='test',
            state='test',
            country='test'
            )

        user_2 = User.objects.create_user(
            username='testuser_2',
            password='27euyayg78q8dgoyo',
            email='test_1@test.com',
            phone_no='07012345679',
            gender='F',
            city='test',
            state='test',
            country='test'
            )

        # Creating Tag objects

        tag_1 = Tag.objects.create(
            name="Tag One"
            )

        tag_2 = Company.objects.create(
            name="Tag Two"
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

        # Creating Article objects

        article_1 = Article.objects.create(
            title="Article One",
            main_paragraph="This is the main paragraph",
            body="This is the main paragraph",
            group="General",
            author=self.user,
            status="published",
            approver=self.user,
            views=6
            )
        article_1.category.add(category_1)
        article_1.save()
        article_1.category.add(category_2)
        article_1.save()
        article_1.subcategory.add(subcategory_1)
        article_1.save()
        article_1.subcategory.add(subcategory_2)
        article_1.save()
        article_1.job.add(job_1)
        article_1.save()
        article_1.job.add(job_2)
        article_1.save()
        article_1.skills.add(skill_1)
        article_1.save()
        article_1.skills.add(skill_2)
        article_1.save()
        article_1.tags.add(tag_1)
        article_1.save()
        article_1.tags.add(tag_2)
        article_1.save()
        article_1.likes.add(self.user)
        article_1.save()
        article_1.likes.add(user_2)
        article_1.save()
        article_1.read.add(self.user)
        article_1.save()
        article_1.read.add(user_2)
        article_1.save()

        article_2 = Article.objects.create(
            title="Article Two",
            main_paragraph="This is the main paragraph",
            body="This is the main paragraph",
            group="General",
            author=self.user,
            status="published",
            approver=self.user,
            views=6
            )
        article_2.tags.add(tag_1)
        article_2.save()


    def test_tag_object_created(self):
        tag_1 = Tag.objects.get(name="Tag One")
        self.assertEqual(tag_1.title, 'Tag One')
        self.assertEqual(tag_1.slug, 'tag-one')

    def test_tag_reverse_query(self):
        tag_1 = Tag.objects.get(name="Tag One")
        self.assertEqual(Article.objects.filter(article_tags=tag_1.id).count(), 2)


    def test_tag_object_created(self):
        Article_1 = Article.objects.get(name="Article One")
        self.assertEqual(Article_1.message, 'This is a test message')
        self.assertEqual(Article_1.job_category.count(), 2)
        self.assertEqual(Article_1.job_subcategory.count(), 2)
        self.assertEqual(Article_1.job.count(), 2)
        # self.assertEqual(ad_1.video_link, '')
        self.assertEqual(Article_1.advertizer, self.user)
        self.assertEqual(Article_1.related_company.count(), 2)
        self.assertEqual(Article_1.active, False)
        self.assertEqual(Article_1.slug, 'indomie-main-advert')
        self.assertEqual(Article_1.get_absolute_url(), '/ads/indomie-main-advert/')

    def test_advertizer_ads_count(self):
        self.assertEqual(self.user.advertizer_user.count(), 2)