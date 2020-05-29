from django.shortcuts import render

# Create your views here.

from .models import Profile

def home_view_header(request):

    obj = Profile.objects.get()

    context = {
        'name': obj.name,
        'recent_status': obj.recent_status,
        'Profile_pic': obj.Profile_pic,
        'recent_status': obj.recent_status,
        }

    return render(request, "home/index.html", context)



