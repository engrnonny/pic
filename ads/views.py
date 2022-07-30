from django.shortcuts import get_list_or_404, get_object_or_404, render
from .models import Ad


# All ads view

def ads(request):
    # ads = get_list_or_404(Ad)
    # context = {
    #     'ads': ads
    # }
    return render(request, 'ads/ads.html')


# Single Ad view

def ad(request, slug):
    ad = get_object_or_404(Ad, slug=slug)
    context = {
        'ad': ad
    }
    return render(request, 'ads/ad.html', context)
