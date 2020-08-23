from django.contrib import admin

# Register your models here.


from .models import Profile

admin.site.register(Profile)

from home.models import Work_Experience
admin.site.register(Work_Experience)