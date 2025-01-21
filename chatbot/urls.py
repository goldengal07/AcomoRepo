from django.urls import path
from . import views

urlpatterns = [
    path('chatbot/get-listings/', views.get_listings, name='get_listings'),
    path('chatbot/find-room/', views.find_room, name='find_room'),
]
