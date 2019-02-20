import requests
import csv
from multiprocessing import Pool
from time import sleep


def get_html(url):
    # sleep(1)  # способ замедления запросов 
    r = requests.get(url)
    return r.text


def write_csv(data):
    with open('websites.csv', 'a') as f:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


# &quote; - обозначает ',' в html


def get_page_data(text):

    # из полученных текстовых данных убираем лишние символы пробела и табуляции
    # а также убираем первый ненужный элемент и преобразуем в один общий словарь
    data = text.strip().split('\n')[1:]

    # затем разбиваем на множество списков по \t и перстраховываемся от
    # пустых символов split()
    for row in data:
        columns = row.strip().split('\t')

        # извлекаем нужные данне по индексам
        name = columns[0]
        url = columns[1]
        desription = columns[2]
        traffic = columns[3]
        percent = columns[4]

        # создаем словарь из данных
        data = {'name': name,
                'url': url,
                'description': desription,
                'traffic': traffic,
                'percent': percent,
                }

        # и передаем в функцию для записи в файл
        write_csv(data)


def make_all(url):
    text = get_html(url)
    get_page_data(text)


def main():
    url = 'https://www.liveinternet.ru/rating/ru//today.tsv?page={}'
    urls = [url.format(str(i)) for i in range(1, 6321)]

    with Pool(20) as p:
        p.map(make_all, urls)

    # for i in range(0, 8456):
    #     url = 'https://www.liveinternet.ru/rating/ru//today.tsv?page={}'.format(i)
    #     response = get_html(url)




if __name__ == '__main__':
    main()
