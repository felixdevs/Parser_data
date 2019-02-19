from bs4 import BeautifulSoup
import re

"""
Методы объекта - BeautifulSoup():

soup = BeautifulSoup(file, 'lxml')
soup.find('div', class_='row') - возвращает первый найденный элемент 'row'
soup.find_all('div', class_='row') - возвращает все найденные элементы 'row'
soup.find_all('div', {'class': 'row'}) - эквивалентная форма но с использованием словаря
- предыдущий вариант удобно использовать если мы встречаем в коде такие вещи
  как <div data-set="salary">2300 usd</div> :
soup.find_all('div', {'data-set': 'salary'}
soup.find('div', text='Kate').parent - позволяет получить весь родительский контейнер по ближайшему родителю
soup.find('div', text='Alena').find_parent(class_='row') - конкретизация родительского контейнера

.find_next_subling() - поиск следующего родителя в ширину
.find_previous_subling() - поиск предыдущего родителя родителя в ширину


^ - начало строки
$ - конец строки
. - любой символ
+ - неограниченное количество вхождений
\d - цифра
\w - буквы, цифры


пример поиска: @twitter

mail@gmail.com
@twitter

^@w+

phytex.org - регулярки

"""


def get_copywriter(tag):
    whois = tag.find('div', id='whois').text.strip()

    if 'Copywriter' in whois:
        return tag
    return None


def get_salary(s):
    """ нормализация salary: 2700 usd per month  >> 2700"""
    pattern = r'\d{1,9}'  # создаем шаблон
    salary = re.findall(pattern, s)[0]
    # salary = re.search(pattern, s).group() - 2 вариант
    print(salary)


def main():
    file = open('index.html').read()

    soup = BeautifulSoup(file, 'lxml')
    # row = soup.find_all('div', {'data-set': 'salary'})
    #
    # alena = soup.find('div', text='Alena').find_parent(class_='row')
    # print(alena)

    # поик всех 'Copywriter'
    # copywriters = []
    #
    # persons = soup.find_all('div', class_='row')
    #
    # for person in persons:
    #     cw = get_copywriter(person)
    #     if cw:
    #         copywriters.append(cw)
    # print(copywriters)

    # поиск текста с зарплатой и дальнейшая нормализация
    salary = soup.find_all('div', {'data-set': 'salary'})
    # salary = soup.find_all('div', text=re.compile('\d{1,9}')) - 2 вариант

    for i in salary:
        get_salary(i.text)







if __name__ == '__main__':
    main()