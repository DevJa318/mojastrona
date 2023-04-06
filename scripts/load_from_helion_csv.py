# https://www.youtube.com/watch?v=E8y_6S2Fc5s
# https://towardsdatascience.com/use-python-scripts-to-insert-csv-data-into-django-databases-72eee7c6a433

import csv
import os
from main.models import Book, Publisher, BookLanguage, Author, Translator


def run():
    with open('scripts/helionbooksinfowithauthorinfo.csv') as file:
        # rows:
        #0 ,1 title, 2 img, 3 isbn, 4 author, 5 author_info, 6 description, 7 year,
        # 8 publisher, 9 pages, 10 oryginal_title, 11 amazon_link, 12 translation_by,
        # 13 link_helion, 14 code

        reader = csv.reader(file)
        next(reader)

        for row in reader:
            print(row)

            publisher, created = Publisher.objects.get_or_create(name=row[8])
            language, created = BookLanguage.objects.get_or_create(language='polski')

            image = os.path.basename(row[2])
            if row[14]:
                code = 'https:' + row[14]
            else:
                code = ''

            book = Book(title = row[1],
                        image = image,
                        language = language,
                        publication_date = row[7],
                        description = row[6],
                        isbn = row[3],
                        publisher=publisher,
                        pages = row[9],
                        oryginal_title=row[10],
                        amazon_link=row[11],
                        link_helion=row[13],
                        code=code,
                        )

            book.save()
            author_list = row[4].split(', ')
            for csvauthor in author_list:
                author, created = Author.objects.get_or_create(name=csvauthor)
                book.authors.add(author)

            translator_list = row[12].split(', ')
            for csvtranslator in translator_list:
                translator, created = Translator.objects.get_or_create(name=csvtranslator)
                book.translators.add(translator)