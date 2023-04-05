# https://www.youtube.com/watch?v=E8y_6S2Fc5s
# https://towardsdatascience.com/use-python-scripts-to-insert-csv-data-into-django-databases-72eee7c6a433


import csv
from main.models import Book, Publisher, BookLanguage, Author, Translator

def run():
    with open('scripts/foundapi.csv') as file:
        reader = csv.reader(file)
        next(reader)

        for row in reader:
            print(row)

            publisher, created = Publisher.objects.get_or_create(name=row[5])
            language, created = BookLanguage.objects.get_or_create(language=row[6])

            book = Book(title = row[2],
                        subtitle= row[3],
                        image = row[14],
                        language=language,
                        publication_date = row[10],
                        description = row[12],
                        isbn = row[8],
                        publisher=publisher,
                        pages = row[9],
                        my_file_name = row[0])

            book.save()
            author_list = row[4].split(', ')
            for csvauthor in author_list:
                author, created = Author.objects.get_or_create(name=csvauthor)
                book.authors.add(author)
