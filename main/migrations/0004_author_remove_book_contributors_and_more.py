# Generated by Django 4.1.7 on 2023-03-06 12:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_alter_book_pdf'),
    ]

    operations = [
        migrations.CreateModel(
            name='Author',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
            ],
        ),
        migrations.RemoveField(
            model_name='book',
            name='contributors',
        ),
        migrations.DeleteModel(
            name='BookContributor',
        ),
        migrations.DeleteModel(
            name='Contributor',
        ),
        migrations.AddField(
            model_name='book',
            name='authors',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.PROTECT, to='main.author'),
        ),
    ]