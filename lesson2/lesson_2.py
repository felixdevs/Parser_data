import requests
from bs4 import BeautifulSoup
import csv  # coma separated value (данные разделенные запятой)
import datetime


x = 10

def get_html(url):
    r = requests.get(url)
    return r.text


def refined(s):
    """ ф-я для нормализации >> 1,566 total ratings >> 1566"""
    r = s.split(' ')[0]          # 1,566
    result = r.replace(',', '')  # 1566
    return result


def write_csv(data):
    """ запись в csv """
    with open('plugins.csv', 'a') as f:
        writer = csv.writer(f)

        writer.writerow([data['name'],  # метод writerow принимает один аргумент - поэтому передаем () или []
                         data['url'],
                         data['reviews'],
                         data['date']
                         ])


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    popular = soup.find_all('section')[3]
    plugins = popular.find_all('article')  # 4

    for plugin in plugins:
        name = plugin.find('h2').text                                  # поиск имени плагина
        url = plugin.find('h2').find('a').get('href')                  # поиск ссылки на плагин
        r = plugin.find('span', class_='rating-count').find('a').text  # рейтинг плагина, class_ - для избегания конфликтов в Python
        rating = refined(r)                                            # нормализация

        # запись найденых данных в словарь + дата(от себя)
        data = {'name': name,
                'url': url,
                'reviews': rating,
                'date': datetime.date.today()
                }

        write_csv(data)


def main():
    url = 'https://wordpress.org/plugins/'
    get_data(get_html(url))


if __name__ == '__main__':
    main()
