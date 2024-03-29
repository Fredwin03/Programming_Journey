from bs4 import BeautifulSoup
import requests;
import lxml;

site = requests.get('https://quotes.toscrape.com')
soup = BeautifulSoup(site.text, 'lxml')
tag = soup.div
print(len(list(tag)))
print(len(list(tag.descendants)))