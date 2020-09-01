from django.core.management.base import BaseCommand
from urllib.request import urlopen
from bs4 import BeautifulSoup
import json
from home.models import Work_Experience

class Command(BaseCommand):
    help = "collect jobs"
    # define logic of command
    def handle(self, *args, **options):
        # collect html
        html = urlopen('https://www.linkedin.com/in/tusher16/')
        # convert to soup
        soup = BeautifulSoup(html, 'html.parser')
        # grab all postings
        postings = soup.find_all("div", class_="posting")
        for p in postings:
            Company_Name = p.find('h5').text
            Total_Duration = p.find('span', class_='sort-by-location').text
            Job_Role = p.find('h5').text
            Duration = p.find('h5').text
            Role_Type = p.find('h5').text
            Job_address = p.find('h5').text
            Job_Details = p.find('h5').text

            # check if url in db
            try:
                # save in db
                Work_Experience.objects.create(
                    title=title,
                    location=location
                )
                print('%s added' % (Company_Name,))
            except:
                print('%s already exists' % (Company_Name,))
        self.stdout.write( 'job complete' )