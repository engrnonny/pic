from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import get_object_or_404, render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from .models import Ad
from .serializers import AdSerializer


# All ads view
@api_view(['GET', 'POST'])
def ads(request, format=None):
    if request.method == 'GET':
        ads = Ad.objects.all()
        serializer = AdSerializer(ads, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = AdSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# Single Ad view

def ad(request, slug):
    ad = get_object_or_404(Ad, slug=slug)
    context = {
        'ad': ad
    }
    return render(request, 'ads/ad.html', context)
