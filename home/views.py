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
        'resume': obj.resume,
        'facebook_link' : obj.facebook_link,
        'linkedin_link': obj.linkedin_link,
        'github_link' : obj.github_link,
        'stack_overflow_link' : obj.stack_overflow_link,
        'researchgate_link' : obj.researchgate_link,
        'google_sch_link': obj.google_sch_link,
        'email': obj.email,
        'About_Me': obj.About_Me,
        'my_website_link': obj.my_website_link,
        'my_address': obj.my_address,

        }

    return render(request, "home/index.html", context)



