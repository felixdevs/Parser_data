import requests
from bs4 import BeautifulSoup


def get_html(url):
    r = requests.get(url)
    return r.text


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    h1 = soup.find('div', id='home-welcome').find('header').find('h1').text
    print(type(h1))
    return h1


def main():
    url = 'https://wordpress.org/'
    print(get_data(get_html(url)))


if __name__ == '__main__':
    main()


""" тот же пример на основе класса """
# class Parser:
#
#     def __init__(self, url):
#         self.url = url
#
#     def html(self):
#         r = requests.get(self.url)
#         return get_data(r.text)
#
#     def get_data(self, html):
#         soup = BeautifulSoup(html, 'lxml')
#         h1 = soup.find('div', id='home-welcome').find('header').find('h1').text
#         return h1
#
#
# p = Parser('https://wordpress.org/')
# print(p.html())
