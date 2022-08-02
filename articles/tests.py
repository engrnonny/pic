from django.test import TestCase
from django.shortcuts import reverse


class ArticlesLandingPageTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('articles-landing-page'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/articles_landing_page.html')


class AllArticles(TestCase):

    def test_get(self):
        response = self.client.get(reverse('all-articles'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/articles.html')


class ArticleTag(TestCase):

    def test_get(self):
        response = self.client.get(reverse('tag'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/articles.html')


class ArticleGroup(TestCase):

    def test_get(self):
        response = self.client.get(reverse('article-group'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/articles.html')


class Article(TestCase):

    def test_get(self):
        response = self.client.get(reverse('article'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/article.html')


class LikeUnlikeArticle(TestCase):

    def test_get(self):
        response = self.client.get(reverse('like-unlike-article'))
        self.assertEqual(response.status_code, 200)


class NewArticle(TestCase):

    def test_get(self):
        response = self.client.get(reverse('new-article'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/new_article.html')


class EditArticle(TestCase):

    def test_get(self):
        response = self.client.get(reverse('ads'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'articles/new_article.html')
