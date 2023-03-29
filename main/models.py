from django.db import models


# Create your models here.
class Publisher(models.Model):
    name = models.CharField(max_length=60, help_text="Nazwa wydawnictwa")
    adres = models.CharField(max_length=60, help_text="Adres internetowy wydawnictwa", blank=True)

    def __str__(self):
        return self.name

class BookLanguage(models.Model):
    language = models.CharField('Language', max_length=20, default='')

    def __str__(self):
        return self.language

class Book(models.Model):
    title = models.CharField('Title', max_length=230)
    subtitle = models.CharField('Subtitle', max_length=230, default='')
    image = models.ImageField(upload_to='book/images/okladki/')
    pdf = models.FileField(upload_to='book/pdf/', blank=True)
    language = models.ForeignKey('BookLanguage', on_delete=models.CASCADE)
    publication_date = models.PositiveIntegerField(verbose_name="Publication Date")
    description = models.TextField(help_text='description')
    isbn = models.CharField(max_length=20, verbose_name="ISBN number", blank=True)
    authors = models.ManyToManyField('Author')
    publisher = models.ForeignKey("Publisher", on_delete=models.PROTECT)
    tag = models.ManyToManyField('Tag', default='')
    pages = models.IntegerField(default=0)
    my_file_name = models.CharField(max_length=250, blank=True)

    def __str__(self):
        return self.title

#
# class Contributor(models.Model):
#     first_name = models.CharField('Name', max_length=50)
#     last_name = models.CharField('Last Name', max_length=50)
#
#
# class BookContributor(models.Model):
#     class ContributorRole(models.TextChoices):
#         AUTHOR = "AUTHOR", "Author"
#         EDITOR = "EDITOR", "Editor"
#         REVIEwER = "REVIEWER", "Reviewer"
#
#     book = models.ForeignKey(Book, on_delete=models.PROTECT)
#     contributor = models.ForeignKey(Contributor, on_delete=models.CASCADE)
#     role = models.CharField(verbose_name="Rola jaką współtwórca odegrał przy tworzeniu książki",
#                             choices=ContributorRole.choices, max_length=20)


class Tag(models.Model):
    name = models.CharField(max_length=40, help_text="tag")

    def __str__(self):
        return self.name

class Author(models.Model):
    name = models.CharField(max_length=30)

    def __str__(self):
        return self.name