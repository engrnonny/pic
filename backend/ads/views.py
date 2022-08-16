from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import get_object_or_404, render
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from .models import Ad
from .serializers import AdSerializer


# All ads view
@csrf_exempt
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

@api_view(['GET', 'PUT', 'DELETE'])
def ad(request, slug, format=None):
    ad = get_object_or_404(Ad, slug=slug)

    if request.method == 'GET':
        serializer = AdSerializer(ad)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = AdSerializer(ad, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        ad.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
