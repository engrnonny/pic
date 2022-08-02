from django.test import TestCase
from django.shortcuts import reverse

class RegisterTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('register'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'users/register.html')

class LoginViewTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('login'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'users/login.html')

class LogoutTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('logout'))
        self.assertEqual(response.status_code, 302)

class UserProfileTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('user-profile'))
        self.assertRedirects(response, '/users/login/?next=/users/profile/', status_code=302,
        target_status_code=200, fetch_redirect_response=True)

class MembersLandingPageTest(TestCase):

    def test_get(self):
        response = self.client.get(reverse('members-landing-page'))
        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'users/members_landing_page.html')

