from django.shortcuts import render
from django.shortcuts import get_object_or_404
from .models import Book, UsersBookStatus
from django.contrib.auth.decorators import login_required

# Create your views here.

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

@login_required
def userbooks(request):
	userbooks = UsersBookStatus.objects.filter(user=request.user)
	return render(request, 'userbooks.html', {'userbooks': userbooks})