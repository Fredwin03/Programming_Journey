from bs4 import BeautifulSoup, Comment
with open('./blog-home.html', 'r') as file:
    content = file.read()
soup = BeautifulSoup(content,'lxml')

blogs = soup.find_all('div', class_='blog-item')
for blog in blogs:
    date = blog.findChild('p')
    if '25' in date.text:
        print(f'{date.text[:12]}: {date.a.text}',sep='\n')