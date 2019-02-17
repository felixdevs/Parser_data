import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    return r.text


def write_csv(data):
    with open('cmc.csv', 'a') as f:
        writer = csv.writer(f)

        writer.writerow([data['name'],
                         data['symbol'],
                         data['url'],
                         data['price'],
                         ])


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    # print(type(soup)

    trs = soup.find('table', id='currencies').find('tbody').find_all('tr')
    # print(len(trs))

    for tr in trs:
        tds = tr.find_all('td')
        name = tds[1].find('a', class_='currency-name-container').text  # название валюты
        symbol = tds[1].find('a').text  # биржевые символы
        url = 'https://coinmarketcap.com' + tds[1].find('a').get('href')  # ссылка
        price = tds[3].find('a').get('data-usd')

        data = {'name': name,
                'symbol': symbol,
                'url': url,
                'price': price,
                }

        write_csv(data)


def main():
    url = 'https://coinmarketcap.com/'
    get_page_data(get_html(url))


if __name__ == '__main__':
    main()


# soup.find() - возвращает конкретный объект
# soup.find_all() - возвращает список всех указанных объектов