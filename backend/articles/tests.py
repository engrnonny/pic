from django.test import Client, TestCase
from django.shortcuts import reverse

from articles.models import Tag, Article
from skillsets.models import JobCategory, JobSubCategory, Job, Skill
from users.models import User



class ArticleTest(TestCase):
    def setUp(self):
        self.client = Client()

        # Creating User objects

        self.user = User.objects.create_user(
            username='testuser_1',
            password='27euyayg78q8dgoyo',
            email='test@test.com',
            phone_no='07012345678',
            gender='M',
            city='test',
            state='test',
            country='test',
            author='Yes'
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

        tag_2 = Tag.objects.create(
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
            body="This is the main body",
            group="general",
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
            body="This is the main body",
            group="general",
            author=self.user,
            status="published",
            approver=self.user,
            views=6
            )
        article_2.tags.add(tag_1)
        article_2.save()


    # Testing Models logic

    def test_tag_object_created(self):
        tag_1 = Tag.objects.get(name="Tag One")
        self.assertEqual(tag_1.name, 'Tag One')
        self.assertEqual(tag_1.slug, 'tag-one')

    def test_tag_reverse_query(self):
        tag_1 = Tag.objects.get(name="Tag One")
        self.assertEqual(Article.objects.filter(tags=tag_1.id).count(), 2)

    def test_Article_object_created(self):
        article_1 = Article.objects.get(title="Article One")
        self.assertEqual(article_1.title, 'Article One')
        self.assertEqual(article_1.main_paragraph, 'This is the main paragraph')
        self.assertEqual(article_1.body, 'This is the main body')
        self.assertEqual(article_1.group, 'general')
        # self.assertEqual(article_1.video_link, '')
        self.assertEqual(article_1.category.count(), 2)
        self.assertEqual(article_1.subcategory.count(), 2)
        self.assertEqual(article_1.job.count(), 2)
        self.assertEqual(article_1.skills.count(), 2)
        self.assertEqual(article_1.tags.count(), 2)
        # self.assertEqual(article_1.image_0, '')
        # self.assertEqual(article_1.image_1, '')
        # self.assertEqual(article_1.image_2, '')
        # self.assertEqual(article_1.image_3, '')
        # self.assertEqual(article_1.image_4, '')
        # self.assertEqual(article_1.image_5, '')
        # self.assertEqual(article_1.image_6, '')
        # self.assertEqual(article_1.image_7, '')
        # self.assertEqual(article_1.image_8, '')
        # self.assertEqual(article_1.image_9, '')
        self.assertEqual(article_1.author, self.user)
        self.assertEqual(article_1.status, 'published')
        self.assertEqual(article_1.approver, self.user)
        self.assertEqual(article_1.slug, 'article-one')
        self.assertEqual(article_1.likes.count(), 2)
        self.assertEqual(article_1.read.count(), 2)
        self.assertEqual(article_1.views, 6)
        self.assertEqual(article_1.get_absolute_url(), '/articles/general/article-one/')


        # Testing Views logic

    def test_get_articles_landing_page(self):
        response = self.client.get(reverse('articles-landing-page'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/articles_landing_page.html')

    def test_get_all_articles(self):
        response = self.client.get(reverse('all-articles'))
        self.assertEqual(response.status_code, 200)
        self.assertEqual(len(response.context['articles']), 2)
        self.assertTemplateUsed(response, 'articles/articles.html')

    def test_get_articles_by_tag(self):
        tag_1 = Tag.objects.get(name="Tag One")
        response = self.client.get(reverse('tag', kwargs={'slug': tag_1.slug}))
        self.assertEqual(response.status_code, 200)
        self.assertEqual(len(response.context['articles']), 2)
        self.assertTemplateUsed(response, 'articles/articles.html')

    def test_get_articles_by_group(self):
        response = self.client.get(reverse('article-group', args=['general']))
        self.assertEqual(response.status_code, 200)
        self.assertEqual(len(response.context['articles']), 2)
        self.assertTemplateUsed(response, 'articles/articles.html')

    def test_get_single_article(self):
        article_1 = Article.objects.get(title="Article One")
        response = self.client.get(reverse('article', kwargs={
            'group': article_1.group,
            'slug': article_1.slug
            }))
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.context['article'].title, 'Article One')
        self.assertEqual(response.context['jobs'].count(), 2)
        self.assertEqual(response.context['job_subcategories'].count(), 2)
        self.assertEqual(response.context['job_categories'].count(), 2)
        self.assertEqual(response.context['skills'].count(), 2)
        self.assertEqual(response.context['tags'].count(), 2)
        self.assertTemplateUsed(response, 'articles/article.html')

    def test_like_unlike_article(self):
        self.client.login(username=self.user.username, password='27euyayg78q8dgoyo')
        article_1 = Article.objects.get(title="Article One")
        response = self.client.get(reverse('like-unlike-article', kwargs={
            'group': article_1.group,
            'slug': article_1.slug
            }))
        self.assertRedirects(response, '/articles/general/article-one/', status_code=302, target_status_code=200, fetch_redirect_response=True)
        # self.assertEqual(response.context['article'].likes.count(), 1)

    def test_get_new_article(self):
        self.client.login(username=self.user.username, password='27euyayg78q8dgoyo')
        response = self.client.get(reverse('new-article'))
        self.assertEqual(response.status_code, 200)
        # self.assertTemplateUsed(response, 'articles/new_article.html')

    # def test_get_edit_article(self):
    #     response = self.client.get(reverse('ads'))
    #     self.assertEqual(response.status_code, 200)
    #     self.assertTemplateUsed(response, 'articles/new_article.html')
