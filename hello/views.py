from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return HttpResponse("Hello, Django from the 'hello' app!")
