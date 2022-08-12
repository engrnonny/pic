from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import get_object_or_404, render
# from rest_framework import viewsets
from rest_framework import permissions
from rest_framework.parsers import JSONParser

from .models import Ad
from .serializers import AdSerializer


# class AdViewSet(viewsets.ModelViewSet):
#     queryset = Ad.objects.all().order_by('-created_on')
#     serializer_class = AdSerializer
#     permission_classes = [permissions.IsAuthenticated]


# All ads view
@csrf_exempt
def ads(request):
    if request.method == 'GET':
        snippets = Ad.objects.all()
        serializer = AdSerializer(snippets, many=True)
        return JsonResponse(serializer.data, safe=False)

    elif request.method == 'POST':
        data = JSONParser().parse(request)
        serializer = AdSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return JsonResponse(serializer.data, status=201)
        return JsonResponse(serializer.errors, status=400)


# Single Ad view

def ad(request, slug):
    ad = get_object_or_404(Ad, slug=slug)
    context = {
        'ad': ad
    }
    return render(request, 'ads/ad.html', context)
