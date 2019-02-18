import csv


def write_csv(data):
    """ обычная запись """
    with open('name.csv', 'a') as file:
        writer = csv.writer(file)
        writer.writerow((data['name'],
                         data['surname'],
                         data['age'],
                         ))


def write_csv_2(data):
    """ запись упорядоченая по полям """
    with open('name_2.csv', 'a') as file:
        order = ['age', 'surname', 'name']  # указываем последовательность
        writer = csv.DictWriter(file, fieldnames=order)  # создаем экземпляр и в атрибуте указываем флаг последовательности

        writer.writerow(data)


def main():
    d = {'name': 'Petr', 'surname': 'Ivanov', 'age': 21}
    d1 = {'name': 'Ivan', 'surname': 'Kozlov', 'age': 18}
    d2 = {'name': 'Ira', 'surname': 'Malisheva', 'age': 32}

    l = [d, d1, d2]

    for i in l:
        write_csv(i)
        write_csv_2(i)

    # Пример вывод файла csv в нужном нам порядке полей
    with open('catalog_2.csv') as file:
        fieldname = ['name', 'url', 'price']
        reader = csv.DictReader(file, fieldnames=fieldname)

        for row in reader:
            print(row)


if __name__ == '__main__':
    main()
