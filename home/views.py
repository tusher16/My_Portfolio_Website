from django.shortcuts import render

# Create your views here.

from .models import *

def home(request):

    profile = Profile.objects.all()

    
    
    context = {'Profile': Profile}
    return render(request, 'home/index.html', context)


def header(request):
    profile = Profile.objects.all()

    
    
    context = {'Profile': Profile}
    
    return render(request, 'home/header.html', context)

