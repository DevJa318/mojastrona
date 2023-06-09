# Generated by Django 4.1.7 on 2023-03-27 17:29

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0006_remove_book_authors_remove_book_tag_alter_tag_name_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='BookLanguage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('language', models.CharField(default='', max_length=20, verbose_name='Language')),
            ],
        ),
        migrations.AlterField(
            model_name='book',
            name='image',
            field=models.ImageField(upload_to='book/images/okladki/'),
        ),
        migrations.AlterField(
            model_name='book',
            name='publication_date',
            field=models.PositiveIntegerField(verbose_name='Publication Date'),
        ),
        migrations.AlterField(
            model_name='book',
            name='tag',
            field=models.ManyToManyField(default='', to='main.tag'),
        ),
        migrations.AlterField(
            model_name='publisher',
            name='adres',
            field=models.CharField(blank=True, help_text='Adres internetowy wydawnictwa', max_length=60),
        ),
        migrations.AlterField(
            model_name='book',
            name='language',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.booklanguage'),
        ),
    ]
