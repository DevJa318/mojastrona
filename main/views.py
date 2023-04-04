from django.shortcuts import render
from django.http import HttpResponse
#from django.http import HttpResponse
# Create your views here.
from django.shortcuts import get_object_or_404
from .models import Book

def home(request):
	searchTerm = request.GET.get('searchBook')
	if searchTerm:
		books = Book.objects.filter(title__icontains=searchTerm)
	else:
		books = Book.objects.all()
	return render(request, 'home.html',
				{'searchTerm': searchTerm, 'books': books})

def detail(request, book_id):
	book = get_object_or_404(Book, pk=book_id)
	return render(request, 'detail.html', {'book': book})

