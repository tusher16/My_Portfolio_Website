from django.db import models

# Create your models here.


class Profile(models.Model):
    name = models.CharField(max_length=100)
    recent_status = models.CharField(max_length=100)

    facebook_link = models.URLField(("facebook_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )
    linkedin_link = models.URLField(("linkedin_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )
    github_link = models.URLField(("github_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )
    stack_overflow_link = models.URLField(("stack_overflow_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )

    resume = models.FileField(("resume"), 
        max_length=100,
        )

    Profile_pic = models.ImageField(blank=True, null=True) 

    email = models.EmailField(max_length=254, null=True)

    date_created = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return self.name
    