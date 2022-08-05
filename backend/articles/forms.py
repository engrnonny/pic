from django.forms import ModelForm
from .models import Article

class ArticleForm(ModelForm):
    class Meta:
        model = Article
        fields = [
            'title',
            'main_paragraph',
            'body',
            'video_link',
            'category',
            'subcategory',
            'job',
            'tags',
            'image_0'
            ]

    # title = models.CharField(max_length=255, unique=True)
    # main_paragraph = models.CharField(max_length=255)
    # body = models.TextField()
    # author = models.ForeignKey(User, on_delete=models.RESTRICT)
    # video_link = models.URLField(blank=True, null=True)
    # category = models.ManyToManyField(JobCategory, related_name='article_category', blank=True)
    # subcategory = models.ManyToManyField(JobSubCategory, related_name='article_category', blank=True)
    # job = models.ManyToManyField(Job, related_name='article_category', blank=True)
    # tags = models.ManyToManyField(Tag, related_name='article_tags', blank=True)
    # image_0 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_1 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_2 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_3 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_4 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_5 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_6 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_7 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_8 = models.ImageField(blank=True, upload_to=get_upload_path)
    # image_9 = models.ImageField(blank=True, upload_to=get_upload_path)
    # published = models.BooleanField(default=False)
    # slug = models.SlugField(max_length=255, unique=True, blank=True)
    # likes = models.ManyToManyField(User, related_name='user_likes', blank=True)
    # views = models.PositiveBigIntegerField(default=0)
    # created_on = models.DateTimeField(auto_now_add=True)
    # modified_on = models.DateTimeField(auto_now=True)