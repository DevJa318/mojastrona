# Generated by Django 4.1.7 on 2023-04-05 13:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0011_book_amazon_link_book_books_author_info_book_code_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Translator',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
            ],
        ),
        migrations.AddField(
            model_name='book',
            name='translators',
            field=models.ManyToManyField(blank=True, to='main.translator'),
        ),
    ]
