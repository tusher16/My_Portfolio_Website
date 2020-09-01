from django.db import models
from django.utils import timezone

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

    researchgate_link = models.URLField(("researchgate_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )

    google_sch_link= models.URLField(("google_sch_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )

    my_website_link = models.URLField(("my_website_link"), 
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

    About_Me = models.TextField(max_length=800, null=True)

    my_address = models.CharField(max_length=100, null=True)

    def __str__(self):
        return self.name

class Projects(models.Model):

    project_name = models.CharField(max_length=100)

    project_details = models.TextField(max_length=800, null=True)

    #Project_latest = models.


#scraping class for scrap linked in work_Experience data
class Work_Experience(models.Model):
    #url = models.CharField(max_length=250, unique=True)
    Company_Name = models.CharField(max_length=250,null=True)
    Total_Duration = models.CharField(max_length=250,null=True)
    Job_Role = models.CharField(max_length=250,null=True)
    Duration = models.CharField(max_length=250,null=True)
    Role_Type = models.CharField(max_length=250,null=True)
    Job_address = models.CharField(max_length=250,null=True)
    Job_Details = models.TextField(max_length=800, null=True)
    created_date = models.DateTimeField(default=timezone.now,null=True)
    
    def __str__(self):
        return self.Company_Name
    class Meta:
        ordering = ['Company_Name']
    class Admin:
        pass