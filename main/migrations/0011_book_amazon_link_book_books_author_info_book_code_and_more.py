# Generated by Django 4.1.7 on 2023-04-05 13:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0010_alter_book_tag'),
    ]

    operations = [
        migrations.AddField(
            model_name='book',
            name='amazon_link',
            field=models.URLField(blank=True),
        ),
        migrations.AddField(
            model_name='book',
            name='books_author_info',
            field=models.TextField(blank=True, help_text=models.TextField(help_text='description')),
        ),
        migrations.AddField(
            model_name='book',
            name='code',
            field=models.URLField(blank=True),
        ),
        migrations.AddField(
            model_name='book',
            name='link_helion',
            field=models.URLField(blank=True),
        ),
        migrations.AddField(
            model_name='book',
            name='oryginal_title',
            field=models.CharField(blank=True, max_length=270),
        ),
    ]
