from django.shortcuts import render

# Create your views here.

def home(request):
    context = {}
    return render(request, 'home/index.html', context)


def header(request):
    context = {}
    return render(request, 'home/header.html', context)

