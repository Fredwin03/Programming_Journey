# from selenium import webdriver
import requests
# import time
# from selenium.webdriver.common.by import By
from bs4 import BeautifulSoup
# import lxml

# driver = webdriver.Chrome(executable_path='C://Users/John Fredwin/Desktop/chromedriver.exe')
# content = driver.page_source.encode("utf-8").strip()
home = requests.get('https://open.spotify.com/')
# songs = driver.find_elements(By.CLASS_NAME, 'LunqxlFIupJw_Dkx6mNx')
# print(home.text)
soup= BeautifulSoup(home.text, 'html.parser')
div = soup.find('span', attrs={'class': 'kuwYvr'})
# for div in divs:
print(div)
# print(soup.prettify())

# time.sleep(3)