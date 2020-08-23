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
            url = p.find('a', class_='posting-btn-submit')['href']
            title = p.find('h5').text
            location = p.find('span', class_='sort-by-location').text
            # check if url in db
            try:
                # save in db
                Work_Experience.objects.create(
                    url=url,
                    title=title,
                    location=location
                )
                print('%s added' % (title,))
            except:
                print('%s already exists' % (title,))
        self.stdout.write( 'job complete' )