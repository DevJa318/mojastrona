from django.db import models


# Create your models here.
class Publisher(models.Model):
    name = models.CharField(max_length=60, help_text="Nazwa wydawnictwa")
    adres = models.CharField(max_length=60, help_text="Adres internetowy wydawnictwa")

    def __str__(self):
        return self.name


class Book(models.Model):
    title = models.CharField('Title', max_length=230)
    image = models.ImageField(upload_to='book/images/')
    pdf = models.FileField(upload_to='book/pdf/')
    publication_date = models.DateField(verbose_name="Publication Date")
    description = models.CharField(max_length=250)
    isbn = models.CharField(max_length=20, verbose_name="ISBN number", blank=True)
    contributors = models.ManyToManyField('Contributor', through="BookContributor")
    publisher = models.ForeignKey("Publisher", on_delete=models.PROTECT)
    tag = models.ForeignKey("Tag", on_delete=models.PROTECT)


class Contributor(models.Model):
    first_name = models.CharField('Name', max_length=50)
    last_name = models.CharField('Last Name', max_length=50)


class BookContributor(models.Model):
    class ContributorRole(models.TextChoices):
        AUTHOR = "AUTHOR", "Author"
        EDITOR = "EDITOR", "Editor"
        REVIEwER = "REVIEWER", "Reviewer"

    book = models.ForeignKey(Book, on_delete=models.PROTECT)
    contributor = models.ForeignKey(Contributor, on_delete=models.CASCADE)
    role = models.CharField(verbose_name="Rola jaką współtwórca odegrał przy tworzeniu książki",
                            choices=ContributorRole.choices, max_length=20)


class Tag(models.Model):
    name = models.CharField(max_length=20, help_text="tag")
