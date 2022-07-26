from django.shortcuts import get_object_or_404, render
from .models import *

def ad(request, slug):
    ad = get_object_or_404(Ad, slug=slug)
    context = {
        'ad': ad
    }
    return render(request, 'ads/ad.html', context)