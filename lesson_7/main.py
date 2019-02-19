import csv
from peewee import *

# создаем экземпляр нашей базы данных
db = PostgresqlDatabase(database='parser',
                        user='postgres',
                        password='159753',
                        host='localhost',
                        )


class Coin(Model):
    """ Класс представляющий таблицу с названиями столбцов """
    name = CharField(max_length=255)
    url = TextField()
    price = CharField()

    class Meta:
        database = db


def main():

    db.connect()              # подключаемся к базе
    db.create_tables([Coin])  # создаем таблицу

    with open('file.csv') as f:
        order = ['name', 'url', 'price']  # определяем названия полей при чтении, должны совпадать с полями созданными в классе
        reader = csv.DictReader(f, fieldnames=order)    # <class 'csv.DictReader'>

        coins = list(reader)    # переопределяем полученные данные в список кортежных пар

        # Загружаем в базу данных

        ''' первый вариант загрузки в базу (плохой - долго) '''
        # for row in coins:
        #     coin = Coin(name=row['name'],
        #                 url=row['url'],
        #                 price=row['price'],
        #                 )
        #     coin.save()

        ''' второй вариант загрузки в базу (быстрее первого) '''
        # with db.atomic():
        #     for row in coins:
        #         Coin.create(**row)

        ''' третий вариант загрузки в базу (оптимальный при большых данных и если данные
            не грузятся напрямую из сети) '''
        with db.atomic():
            for index in range(0, len(coins), 100):
                Coin.insert_many(coins[index:index+100]).execute()


""" dump базы в файл coin.sql """
# pg_dump --help
# pg_dump -U felix -h localhost -p 5431 parser > coins.sql













if __name__ == '__main__':
    main()