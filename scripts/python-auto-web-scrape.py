import requests
from bs4 import BeautifulSoup

url = "https://old.reddit.com"
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")

for title in soup.find_all("1"):
    print(title.text)
