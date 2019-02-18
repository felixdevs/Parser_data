import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    """ получаем объект по адрессу """
    r = requests.get(url)

    if r.ok:            # если статус код 200 ( не забанили )
        return r.text
    print(r.status_code)


def refine_cy(s):
    """ ф-я для нормализации
    >> Добавлен 05.03.2012 г. Рейтинг - 491 балл. >> ['дата - 05.03.2012', ' рейтинг - 491'] """
    return f'дата - {s.split()[1]}, рейтинг - {s.split()[-2]}'.split(',')


def write_csv(data):
    """ запись в csv """
    with open('catalog.csv', 'a') as f:
        writer = csv.writer(f)
        writer.writerow((data['name'],
                         data['url'],
                         data['snippet'][0],
                         data['snippet'][1],
                         data['description'],
                         ))


def get_page_data(html):
    """ получение и выборка искомых данных """
    soup = BeautifulSoup(html, 'lxml')

    lis = soup.find_all('div', class_='card py-4 col-md-12')

    for li in lis:
        try:
            name = li.find('h3').text
        except:
            name = ''

        try:
            url = 'http://addssites.com/' + li.find('p', class_='site_link').find('a').get('href')
        except:
            url = ''

        try:
            snippet = li.find('p', class_='adst-text pb-3 adst-fonts-style status adst-normal display-4').text.strip()
            norm_snippet = refine_cy(snippet)
        except:
            snippet = ''

        try:
            description = li.find('p', class_='adst-text pb-4 adst-fonts-style text adst-normal display-4').text.strip()
        except:
            description = ''

        data = {'name': name,
                'url': url,
                'snippet': norm_snippet,
                'description': description,
                }

        write_csv(data)


def main():
    pattern = 'http://addssites.com/index.php?do=go&ct=3&page={}'

    for i in range(1, 6):
        url = pattern.format(str(i))
        get_page_data(get_html(url))


if __name__ == '__main__':
    main()
