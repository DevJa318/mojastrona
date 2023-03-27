# https://www.youtube.com/watch?v=E8y_6S2Fc5s

import csv
from main.models import Book, Publisher, BookLanguage, Author

def run():
    with open('scripts/foundapi.csv') as file:
        reader = csv.reader(file)
        next(reader)

        for row in reader:
            print(row)

            publisher, created = Publisher.objects.get_or_create(name=row[5])
            language, created = BookLanguage.objects.get_or_create(language=row[6])

            author_list = row[4].split(', ')
            secondlist=[]
            for csvauthor in author_list:
                author, created = Author.objects.get_or_create(name=csvauthor)
                secondlist.append(name=author)

            book = Book(title = row[2],
                        subtitlegit  = row[3],
                        image = row[14],
                        language=language,
                        publication_date = row[10],
                        description = row[12],
                        isbn = row[8],
                        publisher=publisher,
                        pages = row[9],
                        my_file_name = row[0])

            book.save()
            book.authors.set([secondlist])
