from django.db import models
from django.contrib.auth.models import User
# from django.contrib.auth.models import AbstractUser
from django.conf import settings



# Create your models here.
class Publisher(models.Model):
    """NAZWA WYDAWCY"""
    name = models.CharField(max_length=60, help_text="Nazwa wydawnictwa")
    adres = models.CharField(max_length=60, help_text="Adres internetowy wydawnictwa", blank=True)

    def __str__(self):
        return self.name

class BookLanguage(models.Model):
    """JĘZYK KSIĄŻKI"""
    language = models.CharField('Language', max_length=20, default='')

    def __str__(self):
        return self.language

class Translator(models.Model):
    """TŁUMACZ"""
    name = models.CharField(max_length=30)
    def __str__(self):
        return self.name

class Book(models.Model):
    """KSIĄŻKA"""
    title = models.CharField('Title', max_length=230)
    subtitle = models.CharField('Subtitle', max_length=230, default='', blank=True)
    image = models.ImageField(upload_to='book/images/okladki/')
    pdf = models.FileField(upload_to='book/pdf/', blank=True)
    language = models.ForeignKey('BookLanguage', on_delete=models.CASCADE)
    publication_date = models.PositiveIntegerField(verbose_name="Publication Date")
    description = models.TextField(help_text='description')
    isbn = models.CharField(max_length=20, verbose_name="ISBN number", blank=True, unique=True)
    authors = models.ManyToManyField('Author')
    publisher = models.ForeignKey("Publisher", on_delete=models.PROTECT)
    tag = models.ManyToManyField('Tag', blank=True)
    pages = models.IntegerField(default=0)
    my_file_name = models.CharField(max_length=250, blank=True)
    books_author_info = models.TextField(help_text=description, blank=True)
    oryginal_title = models.CharField(max_length=270, blank=True)
    amazon_link = models.URLField(blank=True)
    translators = models.ManyToManyField('Translator', blank=True)
    link_helion = models.URLField(blank=True)
    code = models.URLField(blank=True)

    def __str__(self):
        return self.title


# class UserBooks(models.Model):
#     user = models.OneToOneField(User, on_delete=models.CASCADE)
#     books = models.ManyToManyField('Book', through="UsersBookStatus")


# class CustomUser(AbstractUser):
#     pass

# Możliwe że nie potrzbne -- odpowiada modelowi Book
## class Contributor(models.Model):
##     first_name = models.CharField('Name', max_length=50)
##     last_name = models.CharField('Last Name', max_length=50)
#

class UsersBookStatus(models.Model):
    class BookStatus(models.TextChoices):
        READ = "READ", "Read"
        IN_PROGRESS = "IN_PROGRESS", "In progress"
        POSTPONED = "POSTPONED", "Postponed"
        TO_READ = "TO_READ", "To read"
        INTERESTING = "INTERESTING", "Interesting"
        NOT_INTERESTING = "NOT_INTERESTING", "Not interesting"

    book = models.ForeignKey(Book, on_delete=models.PROTECT)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    status = models.CharField(verbose_name="Status przerobienia książki przez użytkownika",
                            choices=BookStatus.choices, max_length=20)


class Tag(models.Model):
    """TAGI"""
    name = models.CharField(max_length=40, help_text="tag")

    def __str__(self):
        return self.name

class Author(models.Model):
    """AUTORZY"""
    name = models.CharField(max_length=30)

    def __str__(self):
        return self.name



