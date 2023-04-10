from django.contrib import admin
from .models import *
from django.contrib.auth.admin import UserAdmin


class BooksAdmin(admin.ModelAdmin):
    list_display = ('title', 'isbn', 'publication_date', 'publisher')
    list_filter = ('publisher', 'publication_date', 'language')
    search_fields = ['title', 'authors__name', 'isbn']

# class CustomUserAdmin(UserAdmin):
#     pass


# Register your models here.
admin.site.register(Publisher)
admin.site.register(Book, BooksAdmin)
admin.site.register(Tag)
admin.site.register(Author)
admin.site.register(BookLanguage)
admin.site.register(UsersBookStatus)
# admin.site.register(CustomUser, CustomUserAdmin)
